import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'package:netflix_clone/core/errors/exceptions.dart';
import 'package:netflix_clone/core/urls/apis.dart';
import 'package:netflix_clone/features/new_&_hot/data/datasources/get_coming_soon_data.dart';
import 'package:netflix_clone/features/new_&_hot/data/models/coming_soon_dto.dart';

import '../../../../fixtures/fixture_reader.dart';

@GenerateMocks([http.Client])
import 'get_coming_soon_data_test.mocks.dart';

void main() {
  late MockClient mockClient;
  late GetComingSoonData datasource;

  setUp(() {
    mockClient = MockClient();
    datasource = GetComingSoonData(mockClient);
  });

  group('getComingSoonData', () {
    final tComingSoonDto = ComingSoonDto(resultsList: [
      json.decode(fixture('hot_new_api_response_filtered.json')),
    ]);
    const tPage = 1;

    const url = '${Apis.comingSoonApiPart1}page=1${Apis.comingSoonApiPart2}';
    Uri mockUri = Uri.parse(url);

    test(
      'should perform a get request on the url',
      () {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('hot_new_api_response.json'), 200),
        );
        //act
        datasource.getComingSoonData(tPage);
        //assert
        verify(mockClient.get(
          Uri.parse('${Apis.comingSoonApiPart1}page=$tPage${Apis.comingSoonApiPart2}'),
        ));
      },
    );

    test(
      'should return ComingSoonDto when response code in 200 (success)',
      () async {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('hot_new_api_response.json'), 200),
        );
        //act
        final result = await datasource.getComingSoonData(tPage);
        //assert
        expect(result, tComingSoonDto);
      },
    );

    test(
      'should throw ServerException when the response code is other than 200',
      () {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('hot_new_api_response.json'), 404),
        );
        //act
        final call = datasource.getComingSoonData;
        //assert
        expect(() => call(tPage), throwsA(isA<ServerException>()));
      },
    );
  });
}
