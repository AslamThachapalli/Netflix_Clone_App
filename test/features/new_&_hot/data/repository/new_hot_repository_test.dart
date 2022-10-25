import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/core/errors/exceptions.dart';
import 'package:netflix_clone/core/errors/failures.dart';
import 'package:netflix_clone/features/new_&_hot/data/datasources/get_coming_soon_data.dart';
import 'package:netflix_clone/features/new_&_hot/data/datasources/get_everyones_watching_data.dart';
import 'package:netflix_clone/features/new_&_hot/data/models/coming_soon_dto.dart';
import 'package:netflix_clone/features/new_&_hot/data/models/everyones_watching_dto.dart';
import 'package:netflix_clone/features/new_&_hot/data/repository/new_hot_repository.dart';
import 'package:netflix_clone/features/new_&_hot/domain/entities/coming_soon.dart';
import 'package:netflix_clone/features/new_&_hot/domain/entities/everyones_watching.dart';

import '../../../../fixtures/fixture_reader.dart';

@GenerateMocks([GetComingSoonData, GetEveryOnesWatchingData])
import 'new_hot_repository_test.mocks.dart';

void main() {
  late MockGetComingSoonData mockGetComingSoonData;
  late MockGetEveryOnesWatchingData mockGetEveryOnesWatchingData;
  late NewAndHotRepository repository;

  setUp(() {
    mockGetEveryOnesWatchingData = MockGetEveryOnesWatchingData();
    mockGetComingSoonData = MockGetComingSoonData();
    repository = NewAndHotRepository(
      comingSoonData: mockGetComingSoonData,
      everyOnesWatchingData: mockGetEveryOnesWatchingData,
    );
  });

  group('getComingSoon', () {
    final tComingSoonDto = ComingSoonDto(resultsList: [
      json.decode(fixture('hot_new_api_response_filtered.json')),
    ]);
    const tComingSoon = ComingSoon(
      title: ['name'],
      imageUrl: ['imageUrl'],
      releaseDate: ['2022-08-21'],
      overview: ['overview'],
    );
    const tPage = 1;

    test(
      'should return tComingSoon when call to getComingSoonData successful',
      () async {
        //arrange
        when(mockGetComingSoonData.getComingSoonData(
          any,
        )).thenAnswer((_) async => tComingSoonDto);
        //act
        final result = await repository.getComingSoon(page: tPage);
        //assert
        verifyZeroInteractions(mockGetEveryOnesWatchingData);
        verify(mockGetComingSoonData.getComingSoonData(tPage));
        expect(result, equals(const Right(tComingSoon)));
      },
    );

    test(
      'should return ServerFailure when call to getComingSoonData was unsuccessful',
      () async {
        //arrange
        when(mockGetComingSoonData.getComingSoonData(
          any,
        )).thenThrow(
          ServerException(),
        );
        //act
        final result = await repository.getComingSoon(page: tPage);
        //assert
        verify(mockGetComingSoonData.getComingSoonData(tPage));
        expect(result, equals(const Left(ServerFailure())));
      },
    );
  });

  group('getEveryOnesWatching', () {
    final tEveryOnesWatchingDto = EveryOnesWatchingDto(resultsList: [
      json.decode(fixture('hot_new_api_response_filtered.json')),
    ]);
    const tEveryOnesWatching = EveryOnesWatching(
      title: ['name'],
      imageUrl: ['imageUrl'],
      overview: ['overview'],
    );
    const tPage = 1;

    test(
      'should return tComingSoon when call to getComingSoonData successful',
      () async {
        //arrange
        when(mockGetEveryOnesWatchingData.getEveryOnesWatchingData(
          any,
        )).thenAnswer((_) async => tEveryOnesWatchingDto);
        //act
        final result = await repository.getEveryOnesWatching(page: tPage);
        //assert
        verifyZeroInteractions(mockGetComingSoonData);
        verify(mockGetEveryOnesWatchingData.getEveryOnesWatchingData(tPage));
        expect(result, equals(const Right(tEveryOnesWatching)));
      },
    );

    test(
      'should return ServerFailure when call to getComingSoonData was unsuccessful',
      () async {
        //arrange
        when(mockGetEveryOnesWatchingData.getEveryOnesWatchingData(
          any,
        )).thenThrow(
          ServerException(),
        );
        //act
        final result = await repository.getEveryOnesWatching(page: tPage);
        //assert
        verify(mockGetEveryOnesWatchingData.getEveryOnesWatchingData(tPage));
        expect(result, equals(const Left(ServerFailure())));
      },
    );
  });
}
