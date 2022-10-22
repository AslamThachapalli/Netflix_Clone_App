import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'package:netflix_clone/core/errors/exceptions.dart';
import 'package:netflix_clone/core/urls/apis.dart';
import 'package:netflix_clone/core/urls/api_key.dart';
import 'package:netflix_clone/features/download/data/datasources/get_download_page_image_url.dart';
import 'package:netflix_clone/features/download/data/models/download_dto.dart';

import '../../../../fixtures/fixture_reader.dart';

@GenerateMocks([http.Client])
import 'get_download_page_image_url_test.mocks.dart';

void main() {
  late MockClient mockClient;
  late GetDownloadPageImageUrl datasource;

  setUp(() {
    mockClient = MockClient();
    datasource = GetDownloadPageImageUrl(mockClient);
  });

  final tDownloadDto = DownloadDto.fromJson(
    json.decode(fixture('trending_url_response.json')),
  );

  const url = 'https://api.themoviedb.org/3/trending/all/day?api_key=$apiKey';
  Uri mockUri = Uri.parse(url);

  group('getImageUrl', () {
    test(
      'should perform a get request on the url',
      () {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('trending_url_response.json'), 200),
        );
        //act
        datasource.getImageUrl();
        //assert
        verify(mockClient.get(Uri.parse(Apis.getDownloadImageApi)));
      },
    );

    test(
      'should return DownloadDto when the response code is 200 (success)',
      () async {
        //arrange
        when(mockClient.get(mockUri)).thenAnswer(
          (_) async => http.Response(fixture('trending_url_response.json'), 200),
        );
        //act
        final result = await datasource.getImageUrl();
        //assert
        expect(result, tDownloadDto);
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
        final call = datasource.getImageUrl;
        //assert
        expect(() => call(), throwsA(isA<ServerException>()));
      },
    );
  });
}
