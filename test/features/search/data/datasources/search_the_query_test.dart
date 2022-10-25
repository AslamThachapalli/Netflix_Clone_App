import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'package:netflix_clone/core/errors/exceptions.dart';
import 'package:netflix_clone/core/urls/apis.dart';
import 'package:netflix_clone/features/search/data/datasources/search_the_query.dart';
import 'package:netflix_clone/features/search/data/models/search_active_model_dto.dart';

import '../../../../fixtures/fixture_reader.dart';

@GenerateMocks([http.Client])
import 'search_the_query_test.mocks.dart';

void main() {
  late MockClient mockClient;
  late SearchTheQuery searchTheQuery;

  setUp(() {
    mockClient = MockClient();
    searchTheQuery = SearchTheQuery(mockClient);
  });

  group('getSearchData', () {
    final tSearchActiveModelDto = SearchActiveModelDto(resultsList: [
      json.decode(fixture('search_response_filtered.json')),
    ]);
    const tQuery = 'a';

    const url = '${Apis.searchActiveApiPart1}a${Apis.searchActiveApiPart2}';
    Uri mockUri = Uri.parse(url);

    test(
      'should perform a get request on the url',
      () {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('search_response.json'), 200),
        );
        //act
        searchTheQuery.getSearchData(tQuery);
        //assert
        verify(mockClient.get(
          Uri.parse('${Apis.searchActiveApiPart1}$tQuery${Apis.searchActiveApiPart2}'),
        ));
      },
    );

    test(
      'should return SearchActiveModelDto when response code in 200 (success)',
      () async {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('search_response.json'), 200),
        );
        //act
        final result = await searchTheQuery.getSearchData(tQuery);
        //assert
        expect(result, tSearchActiveModelDto);
      },
    );

    test(
      'should throw ServerException when the response code is other than 200',
      () {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('search_response.json'), 404),
        );
        //act
        final call = searchTheQuery.getSearchData;
        //assert
        expect(() => call(tQuery), throwsA(isA<ServerException>()));
      },
    );
  });
}
