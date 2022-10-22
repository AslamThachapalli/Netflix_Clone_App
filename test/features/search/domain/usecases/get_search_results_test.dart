import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/features/search/domain/entities/search_active_model.dart';
import 'package:netflix_clone/features/search/domain/repository/i_search_repo.dart';
import 'package:netflix_clone/features/search/domain/usecases/get_search_results.dart';

@GenerateMocks([ISearchRepo])
import 'get_search_results_test.mocks.dart';

void main() {
  late MockISearchRepo mockISearchRepo;
  late GetSearchResults searchResults;

  setUp(() {
    mockISearchRepo = MockISearchRepo();
    searchResults = GetSearchResults(mockISearchRepo);
  });

  const tQuery = 'abc';
  const tSearchActiveModel = SearchActiveModel(imageList: ['imageUrl']);

  test(
    'should get search results from ISearchRepo',
    () async {
      //arrange
      when(mockISearchRepo.getSearchResults(query: anyNamed('query')))
          .thenAnswer((_) async => const Right(tSearchActiveModel));
      //act
      final result = await searchResults(const Params(query: tQuery));
      //assert
      verify(mockISearchRepo.getSearchResults(query: tQuery));
      expect(result, equals(const Right(tSearchActiveModel)));
      verifyNoMoreInteractions(mockISearchRepo);
    },
  );
}
