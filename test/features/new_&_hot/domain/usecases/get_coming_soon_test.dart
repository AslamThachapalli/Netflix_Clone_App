import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/features/new_&_hot/domain/entities/coming_soon.dart';
import 'package:netflix_clone/features/new_&_hot/domain/repository/i_new_hot_repo.dart';
import 'package:netflix_clone/features/new_&_hot/domain/usecases/get_coming_soon.dart';

@GenerateMocks([INewAndHotRepo])
import 'get_coming_soon_test.mocks.dart';

void main() {
  late MockINewAndHotRepo mockINewAndHotRepo;
  late GetComingSoon usecase;

  setUp(() {
    mockINewAndHotRepo = MockINewAndHotRepo();
    usecase = GetComingSoon(mockINewAndHotRepo);
  });

  group('GetComingSoon', () {
    const tComingSoon = ComingSoon(
      title: ['title'],
      imageUrl: ['imageUrl'],
      releaseDate: ['date'],
      overview: ['overview'],
    );
    test(
      'should get ComingSoon from the repository',
      () async {
        //arrange
        when(mockINewAndHotRepo.getComingSoon(page: anyNamed('page')))
            .thenAnswer((_) async => const Right(tComingSoon));
        //act
        final result = await usecase(const Params(1));
        //assert
        verify(mockINewAndHotRepo.getComingSoon(page: 1));
        expect(result, equals(const Right(tComingSoon)));
        verifyNoMoreInteractions(mockINewAndHotRepo);
      },
    );
  });
}
