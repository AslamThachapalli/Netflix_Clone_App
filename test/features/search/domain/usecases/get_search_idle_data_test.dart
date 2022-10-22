import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/core/usecases/usecase.dart';
import 'package:netflix_clone/features/search/domain/entities/search_idle_model.dart';
import 'package:netflix_clone/features/search/domain/repository/i_search_repo.dart';
import 'package:netflix_clone/features/search/domain/usecases/get_search_idle_data.dart';

@GenerateMocks([ISearchRepo])
import 'get_search_idle_data_test.mocks.dart';

void main() {
  late MockISearchRepo mockISearchRepo;
  late GetSearchIdleData searchIdleData;

  setUp(() {
    mockISearchRepo = MockISearchRepo();
    searchIdleData = GetSearchIdleData(mockISearchRepo);
  });

  const tSearchIdleData = SearchIdleModel(imageList: ['imageUrl'], titleList: ['title']);

  test(
    'should get searchIdleScreen data from repository',
    () async {
      //arrange
      when(mockISearchRepo.getSearchIdleData())
          .thenAnswer((_) async => const Right(tSearchIdleData));
      //act
      final result = await searchIdleData(NoParams());
      //assert
      verify(mockISearchRepo.getSearchIdleData());
      expect(result, equals(const Right(tSearchIdleData)));
      verifyNoMoreInteractions(mockISearchRepo);
    },
  );
}
