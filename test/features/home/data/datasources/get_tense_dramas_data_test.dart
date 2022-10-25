import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'package:netflix_clone/core/errors/exceptions.dart';
import 'package:netflix_clone/core/urls/apis.dart';
import 'package:netflix_clone/features/home/data/datasources/get_tense_dramas_data.dart';
import 'package:netflix_clone/features/home/data/models/home_dto.dart';

import '../../../../fixtures/fixture_reader.dart';

@GenerateMocks([http.Client])
import 'get_tense_dramas_data_test.mocks.dart';

void main() {
  late MockClient mockClient;
  late GetTenseDramaData datasource;

  setUp(() {
    mockClient = MockClient();
    datasource = GetTenseDramaData(mockClient);
  });

  final tHomeDto = HomeDto.fromJson(
    json.decode(fixture('trending_url_response.json')),
  );

  const url = Apis.tenseDramasApi;
  Uri mockUri = Uri.parse(url);

  group('getData', () {
    test(
      'should perform a get request on the url',
      () {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('trending_url_response.json'), 200),
        );
        //act
        datasource.getData();
        //assert
        verify(mockClient.get(Uri.parse(Apis.tenseDramasApi)));
      },
    );

    test(
      'should return HomeDto when the response code is 200 (success)',
      () async {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('trending_url_response.json'), 200),
        );
        //act
        final result = await datasource.getData();
        //assert
        expect(result, tHomeDto);
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
        final call = datasource.getData;
        //assert
        expect(() => call(), throwsA(isA<ServerException>()));
      },
    );
  });
}
