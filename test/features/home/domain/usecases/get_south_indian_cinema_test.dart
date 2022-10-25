import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dartz/dartz.dart';

import 'package:netflix_clone/core/usecases/usecase.dart';
import 'package:netflix_clone/features/home/domain/entities/home.dart';
import 'package:netflix_clone/features/home/domain/repository/i_home_repo.dart';
import 'package:netflix_clone/features/home/domain/usecases/get_south_indian_cinema.dart';

@GenerateMocks([IHomeRepo])
import 'get_released_in_past_year_test.mocks.dart';

void main() {
  late MockIHomeRepo mockHomeRepo;
  late GetSouthIndianCinema usecase;

  setUp(() {
    mockHomeRepo = MockIHomeRepo();
    usecase = GetSouthIndianCinema(mockHomeRepo);
  });

  const tHome = Home(imageUrlList: ['imageUrl']);

  test(
    'should get Home model from the repository',
        () async {
      //arrange
      when(mockHomeRepo.getSouthIndianCinema()).thenAnswer(
            (_) async => const Right(tHome),
      );
      //act
      final result = await usecase(NoParams());
      //assert
      expect(result, const Right(tHome));
      verify(mockHomeRepo.getSouthIndianCinema());
      verifyNoMoreInteractions(mockHomeRepo);
    },
  );
}
