import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/core/errors/failures.dart';
import 'package:netflix_clone/core/usecases/usecase.dart';
import 'package:netflix_clone/features/search/domain/entities/search_active_model.dart';
import 'package:netflix_clone/features/search/domain/entities/search_idle_model.dart';
import 'package:netflix_clone/features/search/domain/usecases/get_search_idle_data.dart';
import 'package:netflix_clone/features/search/domain/usecases/get_search_results.dart';
import 'package:netflix_clone/features/search/presentation/bloc/search_bloc.dart';

@GenerateMocks([GetSearchIdleData, GetSearchResults])
import 'search_bloc_test.mocks.dart';

void main() {
  late MockGetSearchIdleData mockGetSearchIdleData;
  late MockGetSearchResults mockGetSearchResults;
  late SearchBloc bloc;

  setUp(() {
    mockGetSearchResults = MockGetSearchResults();
    mockGetSearchIdleData = MockGetSearchIdleData();
    bloc = SearchBloc(
      searchIdleData: mockGetSearchIdleData,
      searchResults: mockGetSearchResults,
    );
  });

  group('LoadSearchIdleScreen', () {
    const tSearchIdleModel = SearchIdleModel(
      imageList: ['imageUrl'],
      titleList: ['title'],
    );
    NoParams mockParams = NoParams();

    test(
      'should get idleData from getSearchIdleData usecase',
      () async {
        //arrange
        when(mockGetSearchIdleData(mockParams))
            .thenAnswer((_) async => const Right(tSearchIdleModel));
        //act
        bloc.add(const LoadSearchIdleScreen());
        await untilCalled(mockGetSearchIdleData(mockParams));
        //assert
        verify(mockGetSearchIdleData(NoParams()));
      },
    );

    test(
      'should emit [LoadInProgress, SearchIdleScreenLoaded] when idleData has gotten successfully',
      () {
        //arrange
        when(mockGetSearchIdleData(mockParams)).thenAnswer(
          (_) async => right(tSearchIdleModel),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          SearchIdleScreenLoaded(
            imageUrlList: ['imageUrl'],
            titleList: ['title'],
          ),
        ];
        expect(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadSearchIdleScreen());
      },
    );

    test(
      'should emit [LoadInProgress, LoadFailure] when idleData has failed',
      () {
        //arrange
        when(mockGetSearchIdleData(mockParams)).thenAnswer(
          (_) async => left(const ServerFailure()),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          LoadFailure(message: serverFailureMessage),
        ];
        expectLater(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadSearchIdleScreen());
      },
    );
  });

  group('StartSearching', () {
    const tSearchActiveModel = SearchActiveModel(imageList: ['imageUrl']);
    const Params mockParams = Params(query: 'a');
    const tQuery = 'a';

    test(
      'should get imageUrls from getSearchResults usecase',
      () async {
        //arrange
        when(mockGetSearchResults(mockParams))
            .thenAnswer((_) async => const Right(tSearchActiveModel));
        //act
        bloc.add(const StartSearching(tQuery));
        await untilCalled(mockGetSearchResults(mockParams));
        //assert
        verify(mockGetSearchResults(const Params(query: tQuery)));
      },
    );

    test(
      'should emit [LoadInProgress, SearchResultLoaded] when imageUrls has gotten successfully',
      () {
        //arrange
        when(mockGetSearchResults(mockParams)).thenAnswer(
          (_) async => right(tSearchActiveModel),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          SearchResultLoaded(imageUrlList: ['imageUrl']),
        ];
        expect(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const StartSearching(tQuery));
      },
    );

    test(
      'should emit [LoadInProgress, LoadFailure] when imageUrls has failed',
      () {
        //arrange
        when(mockGetSearchResults(mockParams)).thenAnswer(
          (_) async => left(const ServerFailure()),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          LoadFailure(message: searchFailure),
        ];
        expectLater(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const StartSearching(tQuery));
      },
    );
  });
}
