import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dartz/dartz.dart';

import 'package:netflix_clone/features/download/domain/entities/download.dart';
import 'package:netflix_clone/features/download/domain/repository/i_download_repo.dart';
import 'package:netflix_clone/features/download/domain/usecases/get_download_link.dart';
import 'package:netflix_clone/core/usecases/usecase.dart';

@GenerateMocks([IDownloadRepo])
import 'get_download_link_test.mocks.dart';

void main() {
  late MockIDownloadRepo mockDownloadRepo;
  late GetDownloadLink usecase;

  setUp(() {
    mockDownloadRepo = MockIDownloadRepo();
    usecase = GetDownloadLink(mockDownloadRepo);
  });

  const tDownloadModel = Download(imageUrlList: ['imageUrl']);

  test(
    'should get download model from the repository',
    () async {
      //arrange
      when(mockDownloadRepo.getDownloadLink()).thenAnswer((_) async => const Right(tDownloadModel));
      //act
      final result = await usecase(NoParams());
      //assert
      expect(result, const Right(tDownloadModel));
      verify(mockDownloadRepo.getDownloadLink());
      verifyNoMoreInteractions(mockDownloadRepo);
    },
  );
}
