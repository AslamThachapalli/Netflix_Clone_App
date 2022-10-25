import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:netflix_clone/features/new_&_hot/domain/entities/everyones_watching.dart';
import 'package:netflix_clone/features/new_&_hot/domain/repository/i_new_hot_repo.dart';
import 'package:netflix_clone/features/new_&_hot/domain/usecases/get_everyones_watching.dart';

@GenerateMocks([INewAndHotRepo])
import 'get_everyones_watching_test.mocks.dart';

void main() {
  late MockINewAndHotRepo mockINewAndHotRepo;
  late GetEveryOnesWatching usecase;

  setUp(() {
    mockINewAndHotRepo = MockINewAndHotRepo();
    usecase = GetEveryOnesWatching(mockINewAndHotRepo);
  });

  group('GetEveryOnesWatching', () {
    const tEveryOnesWatching = EveryOnesWatching(
      title: ['title'],
      overview: ['overview'],
      imageUrl: ['imageUrl'],
    );

    test(
      'should get EveryOnesWatching from the repository',
      () async {
        //arrange
        when(mockINewAndHotRepo.getEveryOnesWatching(page: anyNamed('page')))
            .thenAnswer((_) async => const Right(tEveryOnesWatching));
        //act
        final result = await usecase(const Params(1));
        //assert
        verify(mockINewAndHotRepo.getEveryOnesWatching(page: 1));
        expect(result, equals(const Right(tEveryOnesWatching)));
        verifyNoMoreInteractions(mockINewAndHotRepo);
      },
    );
  });
}
