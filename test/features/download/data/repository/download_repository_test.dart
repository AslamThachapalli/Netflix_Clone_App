import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/core/errors/exceptions.dart';
import 'package:netflix_clone/core/errors/failures.dart';
import 'package:netflix_clone/features/download/data/datasources/get_download_page_image_url.dart';
import 'package:netflix_clone/features/download/data/models/download_dto.dart';
import 'package:netflix_clone/features/download/data/repository/download_repository.dart';
import 'package:netflix_clone/features/download/domain/entities/download.dart';

import '../../../../fixtures/fixture_reader.dart';
@GenerateMocks([GetDownloadPageImageUrl])
import 'download_repository_test.mocks.dart';

void main() {
  late MockGetDownloadPageImageUrl mockGetDownloadPageImageUrl;
  late DownloadRepository repository;

  setUp(() {
    mockGetDownloadPageImageUrl = MockGetDownloadPageImageUrl();
    repository = DownloadRepository(mockGetDownloadPageImageUrl);
  });

  final tDownloadDto = DownloadDto(resultsList: [
    json.decode(fixture('trending_url_response_filtered.json')),
  ]);
  const tDownload = Download(imageUrlList: ['imageUrl']);

  group('getDownloadLink', () {
    test(
      'should return imageUrl when call to getDownloadPageImageUrl is success',
      () async {
        //arrange
        when(mockGetDownloadPageImageUrl.getImageUrl()).thenAnswer(
          (_) async => tDownloadDto,
        );
        //act
        final result = await repository.getDownloadLink();
        //assert
        verify(mockGetDownloadPageImageUrl.getImageUrl());
        expect(result, equals(const Right(tDownload)));
      },
    );

    test(
      'should return serverFailure when call to api is unsuccessful',
      () async {
        //arrange
        when(mockGetDownloadPageImageUrl.getImageUrl()).thenThrow(
          ServerException(),
        );
        //act
        final result = await repository.getDownloadLink();
        //assert
        verify(mockGetDownloadPageImageUrl.getImageUrl());
        expect(result, equals(const Left(ServerFailure())));
      },
    );
  });
}
