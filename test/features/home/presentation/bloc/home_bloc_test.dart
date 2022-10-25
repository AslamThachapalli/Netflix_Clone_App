import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/core/errors/failures.dart';
import 'package:netflix_clone/core/usecases/usecase.dart';
import 'package:netflix_clone/features/home/domain/entities/home.dart';
import 'package:netflix_clone/features/home/domain/usecases/get_released_in_past_year.dart';
import 'package:netflix_clone/features/home/domain/usecases/get_south_indian_cinema.dart';
import 'package:netflix_clone/features/home/domain/usecases/get_tense_dramas.dart';
import 'package:netflix_clone/features/home/domain/usecases/get_top_10.dart';
import 'package:netflix_clone/features/home/domain/usecases/get_trending_now.dart';
import 'package:netflix_clone/features/home/presentation/bloc/home_bloc.dart';

@GenerateMocks([
  GetReleasedInPastYear,
  GetSouthIndianCinema,
  GetTenseDrama,
  GetTop10,
  GetTrendingNow,
])
import 'home_bloc_test.mocks.dart';

void main() {
  late MockGetReleasedInPastYear mockGetReleasedInPastYear;
  late MockGetSouthIndianCinema mockGetSouthIndianCinema;
  late MockGetTenseDrama mockGetTenseDrama;
  late MockGetTop10 mockGetTop10;
  late MockGetTrendingNow mockGetTrendingNow;
  late HomeBloc bloc;

  setUp(() {
    mockGetReleasedInPastYear = MockGetReleasedInPastYear();
    mockGetSouthIndianCinema = MockGetSouthIndianCinema();
    mockGetTenseDrama = MockGetTenseDrama();
    mockGetTop10 = MockGetTop10();
    mockGetTrendingNow = MockGetTrendingNow();

    bloc = HomeBloc(
      releasedInPastYear: mockGetReleasedInPastYear,
      southIndianCinema: mockGetSouthIndianCinema,
      tenseDrama: mockGetTenseDrama,
      top10: mockGetTop10,
      trendingNow: mockGetTrendingNow,
    );
  });

  group('LoadHomeScreen', () {
    const tHome = Home(imageUrlList: ['imageUrl']);
    NoParams mockParams = NoParams();

    void successStub() {
      when(mockGetReleasedInPastYear(mockParams)).thenAnswer(
        (_) async => right(tHome),
      );
      when(mockGetSouthIndianCinema(mockParams)).thenAnswer(
        (_) async => right(tHome),
      );
      when(mockGetTenseDrama(mockParams)).thenAnswer(
        (_) async => right(tHome),
      );
      when(mockGetTop10(mockParams)).thenAnswer(
        (_) async => right(tHome),
      );
      when(mockGetTrendingNow(mockParams)).thenAnswer(
        (_) async => right(tHome),
      );
    }

    void failureStub() {
      when(mockGetReleasedInPastYear(mockParams)).thenAnswer(
        (_) async => left(const ServerFailure()),
      );
      when(mockGetSouthIndianCinema(mockParams)).thenAnswer(
        (_) async => left(const ServerFailure()),
      );
      when(mockGetTenseDrama(mockParams)).thenAnswer(
        (_) async => left(const ServerFailure()),
      );
      when(mockGetTop10(mockParams)).thenAnswer(
        (_) async => left(const ServerFailure()),
      );
      when(mockGetTrendingNow(mockParams)).thenAnswer(
        (_) async => left(const ServerFailure()),
      );
    }

    test(
      'should get imageUrls from dependant usecase',
      () async {
        //arrange
        successStub();
        //act
        bloc.add(const LoadHomeScreen());
        await untilCalled(Future.wait([
          mockGetReleasedInPastYear(mockParams),
          mockGetSouthIndianCinema(mockParams),
          mockGetTenseDrama(mockParams),
          mockGetTop10(mockParams),
          mockGetTrendingNow(mockParams),
        ]));
        //assert
        verifyInOrder([
          mockGetReleasedInPastYear(NoParams()),
          mockGetSouthIndianCinema(NoParams()),
          mockGetTenseDrama(NoParams()),
          mockGetTop10(NoParams()),
          mockGetTrendingNow(NoParams()),
        ]);
      },
    );

    test(
      'should emit [LoadInProgress, LoadSuccess] when all the imageUrlList has gotten successfully',
      () {
        //arrange
        successStub();
        //assert later
        const expected = [
          LoadInProgress(),
          LoadSuccess(
            releasedInPastYearImageUrls: ['imageUrl'],
            southIndianCinemaImageUrls: ['imageUrl'],
            tenseDramasImageUrls: ['imageUrl'],
            top10TvShowsImageUrls: ['imageUrl'],
            trendingNowImageUrls: ['imageUrl'],
          ),
        ];
        expect(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadHomeScreen());
      },
    );

    test(
      'should emit [LoadInProgress, LoadFailure] when any of imageUrlList has failed',
      () {
        //arrange
        failureStub();
        //assert later
        const expected = [
          LoadInProgress(),
          LoadFailure(message: failureMessage),
        ];
        expectLater(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadHomeScreen());
      },
    );
  });
}
