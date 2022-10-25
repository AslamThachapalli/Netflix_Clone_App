import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/core/errors/failures.dart';
import 'package:netflix_clone/features/new_&_hot/domain/entities/coming_soon.dart';
import 'package:netflix_clone/features/new_&_hot/domain/entities/everyones_watching.dart';
import 'package:netflix_clone/features/new_&_hot/domain/usecases/get_coming_soon.dart';
import 'package:netflix_clone/features/new_&_hot/domain/usecases/get_everyones_watching.dart' as ev;
import 'package:netflix_clone/features/new_&_hot/presentation/bloc/new_and_hot_bloc.dart';

@GenerateMocks([GetComingSoon, ev.GetEveryOnesWatching])
import 'new_and_hot_bloc_test.mocks.dart';

void main() {
  late MockGetComingSoon mockGetComingSoon;
  late MockGetEveryOnesWatching mockGetEveryOnesWatching;
  late NewAndHotBloc bloc;

  setUp(() {
    mockGetComingSoon = MockGetComingSoon();
    mockGetEveryOnesWatching = MockGetEveryOnesWatching();
    bloc = NewAndHotBloc(
      getComingSoon: mockGetComingSoon,
      getEveryOnesWatching: mockGetEveryOnesWatching,
    );
  });

  group('LoadComingSoonScreen', () {
    const tComingSoon = ComingSoon(
      title: ['name'],
      imageUrl: ['imageUrl'],
      releaseDate: ['2022-08-21'],
      overview: ['overview'],
    );
    const tPage = 1;
    const Params mockParams = Params(1);

    test(
      'should get ComingSoon from getComingSoon usecase',
      () async {
        //arrange
        when(mockGetComingSoon(mockParams)).thenAnswer(
          (_) async => const Right(tComingSoon),
        );
        //act
        bloc.add(const LoadComingSoonScreen(page: tPage));
        await untilCalled(mockGetComingSoon(mockParams));
        //assert
        verify(mockGetComingSoon(const Params(tPage)));
      },
    );

    test(
      'should emit [LoadInProgress, comingSoonScreenLoaded] when comingSoon has gotten successfully',
      () {
        //arrange
        when(mockGetComingSoon(mockParams)).thenAnswer(
          (_) async => right(tComingSoon),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          ComingSoonScreenLoaded(
            title: ['name'],
            imageUrl: ['imageUrl'],
            overview: ['overview'],
            date: ['2022-08-21'],
          ),
        ];
        expectLater(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadComingSoonScreen(page: tPage));
      },
    );

    test(
      'should emit [LoadInProgress, LoadFailure] when getting comingSoon has failed',
      () {
        //arrange
        when(mockGetComingSoon(mockParams)).thenAnswer(
          (_) async => left(const ServerFailure()),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          LoadFailure(message: failureMessage),
        ];
        expectLater(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadComingSoonScreen(page: tPage));
      },
    );
  });

  group('LoadEveryOnesWatchingScreen', () {
    const tEveryOnesWatching = EveryOnesWatching(
      title: ['title'],
      overview: ['overview'],
      imageUrl: ['imageUrl'],
    );
    const tPage = 1;
    const ev.Params mockParams = ev.Params(1);

    test(
      'should get EveryOnesWatching from getEveryOnesWatching usecase',
      () async {
        //arrange
        when(mockGetEveryOnesWatching(mockParams)).thenAnswer(
          (_) async => const Right(tEveryOnesWatching),
        );
        //act
        bloc.add(const LoadEveryOnesWatchingScreen(page: tPage));
        await untilCalled(mockGetEveryOnesWatching(mockParams));
        //assert
        verify(mockGetEveryOnesWatching(const ev.Params(tPage)));
      },
    );

    test(
      'should emit [LoadInProgress, EveryOnesWatchingScreenLoaded] when EveryOnesWatching has gotten successfully',
      () {
        //arrange
        when(mockGetEveryOnesWatching(mockParams)).thenAnswer(
          (_) async => right(tEveryOnesWatching),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          EveryOnesWatchingScreenLoaded(
            title: ['title'],
            imageUrl: ['imageUrl'],
            overview: ['overview'],
          ),
        ];
        expectLater(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadEveryOnesWatchingScreen(page: tPage));
      },
    );

    test(
      'should emit [LoadInProgress, LoadFailure] when getting EveryOnesWatching has failed',
      () {
        //arrange
        when(mockGetEveryOnesWatching(mockParams)).thenAnswer(
          (_) async => left(const ServerFailure()),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          LoadFailure(message: failureMessage),
        ];
        expectLater(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadEveryOnesWatchingScreen(page: tPage));
      },
    );
  });
}
