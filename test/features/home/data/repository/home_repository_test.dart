import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:netflix_clone/core/errors/exceptions.dart';
import 'package:netflix_clone/core/errors/failures.dart';

import 'package:netflix_clone/features/home/data/datasources/get_released_in_past_year_data.dart';
import 'package:netflix_clone/features/home/data/datasources/get_south_indian_cinema_data.dart';
import 'package:netflix_clone/features/home/data/datasources/get_tense_dramas_data.dart';
import 'package:netflix_clone/features/home/data/datasources/get_top_10_data.dart';
import 'package:netflix_clone/features/home/data/datasources/get_trending_now_data.dart';
import 'package:netflix_clone/features/home/data/models/home_dto.dart';
import 'package:netflix_clone/features/home/data/repository/home_repository.dart';
import 'package:netflix_clone/features/home/domain/entities/home.dart';

import '../../../../fixtures/fixture_reader.dart';

@GenerateMocks([
  GetReleasedInPastYearData,
  GetSouthIndianCinemaData,
  GetTenseDramaData,
  GetTop10Data,
  GetTrendingNowData,
])
import 'home_repository_test.mocks.dart';

void main() {
  late MockGetReleasedInPastYearData mockGetReleasedInPastYearData;
  late MockGetSouthIndianCinemaData mockGetSouthIndianCinemaData;
  late MockGetTenseDramaData mockGetTenseDramaData;
  late MockGetTop10Data mockGetTop10Data;
  late MockGetTrendingNowData mockGetTrendingNowData;
  late HomeRepository repository;

  setUp(() {
    mockGetReleasedInPastYearData = MockGetReleasedInPastYearData();
    mockGetSouthIndianCinemaData = MockGetSouthIndianCinemaData();
    mockGetTenseDramaData = MockGetTenseDramaData();
    mockGetTop10Data = MockGetTop10Data();
    mockGetTrendingNowData = MockGetTrendingNowData();

    repository = HomeRepository(
      releasedInPastYearData: mockGetReleasedInPastYearData,
      southIndianCinemaData: mockGetSouthIndianCinemaData,
      tenseDramaData: mockGetTenseDramaData,
      top10data: mockGetTop10Data,
      trendingNowData: mockGetTrendingNowData,
    );
  });

  final tHomeDto = HomeDto(resultsList: [
    json.decode(fixture('trending_url_response_filtered.json')),
  ]);

  const tHome = Home(imageUrlList: ['imageUrl']);

  Future<void> runTestForSuccess(
    Future<HomeDto>? Function() mockMethod,
    Future<Either<Failure, Home>> Function() repositoryMethod,
  ) async {
    //arrange
    when(mockMethod()).thenAnswer(
      (_) async => tHomeDto,
    );
    //act
    final result = await repositoryMethod();
    //assert
    verify(mockGetReleasedInPastYearData.getData());
    expect(result, equals(const Right(tHome)));
  }

  Future<void> runTestForFailure(
    Future<HomeDto>? Function() mockMethod,
    Future<Either<Failure, Home>> Function() repositoryMethod,
  ) async {
    //arrange
    when(mockMethod()).thenThrow(
      ServerException(),
    );
    //act
    final result = await repository.getReleasedInPastYear();
    //assert
    verify(repositoryMethod());
    expect(result, equals(const Left(ServerFailure())));
  }

  group('getReleasedInPastYear', () {
    test(
      'should return Home when call to getReleasedInPastYear is success',
      () async {
        () => runTestForSuccess(
              mockGetReleasedInPastYearData.getData,
              repository.getReleasedInPastYear,
            );
      },
    );

    test(
      'should return serverFailure when call to api is unsuccessful',
      () async {
        () => runTestForFailure(
              mockGetReleasedInPastYearData.getData,
              repository.getReleasedInPastYear,
            );
      },
    );
  });

  group('getSouthIndianCinema', () {
    test(
      'should return Home when call to getSouthIndianCinema is success',
      () async {
        () => runTestForSuccess(
              mockGetSouthIndianCinemaData.getData,
              repository.getSouthIndianCinema,
            );
      },
    );
    test(
      'should return serverFailure when call to api is unsuccessful',
      () async {
        () => runTestForFailure(
              mockGetSouthIndianCinemaData.getData,
              repository.getSouthIndianCinema,
            );
      },
    );
  });

  group('getTenseDrama', () {
    test(
      'should return Home when call to getTenseDrama is success',
      () async {
        () => runTestForSuccess(
              mockGetTenseDramaData.getData,
              repository.getTenseDrama,
            );
      },
    );
    test(
      'should return serverFailure when call to api is unsuccessful',
      () async {
        () => runTestForFailure(
              mockGetTenseDramaData.getData,
              repository.getTenseDrama,
            );
      },
    );
  });

  group('getTop10', () {
    test(
      'should return Home when call to getTop10 is success',
      () async {
        () => runTestForSuccess(
              mockGetTop10Data.getData,
              repository.getTop10,
            );
      },
    );
    test(
      'should return serverFailure when call to api is unsuccessful',
      () async {
        () => runTestForFailure(
              mockGetTop10Data.getData,
              repository.getTop10,
            );
      },
    );
  });

  group('getTrendingNow', () {
    test(
      'should return Home when call to getTrendingNow is success',
      () async {
        () => runTestForSuccess(
              mockGetTrendingNowData.getData,
              repository.getTrendingNow,
            );
      },
    );
    test(
      'should return serverFailure when call to api is unsuccessful',
      () async {
        () => runTestForFailure(
              mockGetTrendingNowData.getData,
              repository.getTrendingNow,
            );
      },
    );
  });
}
