import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'package:netflix_clone/core/errors/exceptions.dart';
import 'package:netflix_clone/core/urls/api_key.dart';
import 'package:netflix_clone/core/urls/apis.dart';
import 'package:netflix_clone/features/search/data/datasources/get_top_search_data.dart';
import 'package:netflix_clone/features/search/data/models/search_idle_model_dto.dart';

import '../../../../fixtures/fixture_reader.dart';

@GenerateMocks([http.Client])
import 'get_top_search_data_test.mocks.dart';

void main() {
  late MockClient mockClient;
  late GetTopSearchData topSearchData;

  setUp(() {
    mockClient = MockClient();
    topSearchData = GetTopSearchData(mockClient);
  });

  group('getData', () {
    final tSearchIdleModelDto = SearchIdleModelDto(resultsList: [
      json.decode(fixture('trending_url_response_filtered.json')),
    ]);

    const url = 'https://api.themoviedb.org/3/trending/all/day?api_key=$apiKey';
    Uri mockUri = Uri.parse(url);

    test(
      'should perform a get request on the url',
      () {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('trending_url_response.json'), 200),
        );
        //act
        topSearchData.getData();
        //assert
        verify(mockClient.get(Uri.parse(Apis.searchIdleScreenDataApi)));
      },
    );

    test(
      'should return SearchIdleModelDto when response code in 200 (success)',
      () async {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('trending_url_response.json'), 200),
        );
        //act
        final result = await topSearchData.getData();
        //assert
        expect(result, tSearchIdleModelDto);
      },
    );

    test(
      'should throw ServerException when the response code is other than 200',
      () {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('trending_url_response.json'), 404),
        );
        //act
        final call = topSearchData.getData;
        //assert
        expect(() => call(), throwsA(isA<ServerException>()));
      },
    );
  });
}
