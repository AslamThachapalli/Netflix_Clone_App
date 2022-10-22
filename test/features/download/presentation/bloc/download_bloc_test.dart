import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/core/errors/failures.dart';
import 'package:netflix_clone/core/usecases/usecase.dart';
import 'package:netflix_clone/features/download/domain/entities/download.dart';
import 'package:netflix_clone/features/download/domain/usecases/get_download_link.dart';
import 'package:netflix_clone/features/download/presentation/bloc/download_bloc.dart';

@GenerateMocks([GetDownloadLink])
import 'download_bloc_test.mocks.dart';

void main() {
  late MockGetDownloadLink mockGetDownloadLink;
  late DownloadBloc bloc;

  setUp(() {
    mockGetDownloadLink = MockGetDownloadLink();
    bloc = DownloadBloc(mockGetDownloadLink);
  });

  group('LoadDownloadPageImage', () {
    const tDownload = Download(imageUrlList: ['imageUrl']);
    NoParams mockParams = NoParams();

    test(
      'should get imageUrl from getDownloadLink usecase',
      () async {
        //arrange
        when(mockGetDownloadLink(mockParams)).thenAnswer(
          (_) async => right(tDownload),
        );
        //act
        bloc.add(const LoadDownloadPageImage());
        await untilCalled(mockGetDownloadLink(mockParams));
        //assert
        verify(mockGetDownloadLink(NoParams()));
      },
    );

    test(
      'should emit [LoadInProgress, LoadSuccess] when imageUrlList has gotten successfully',
      () {
        //arrange
        when(mockGetDownloadLink(mockParams)).thenAnswer(
          (_) async => right(tDownload),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          LoadSuccess(imageUrlList: ['imageUrl']),
        ];
        expect(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadDownloadPageImage());
      },
    );

    test(
      'should emit [LoadInProgress, LoadFailure] when imageUrlList has failed',
      () {
        //arrange
        when(mockGetDownloadLink(mockParams)).thenAnswer(
          (_) async => left(const ServerFailure()),
        );
        //assert later
        const expected = [
          LoadInProgress(),
          LoadFailure(message: serverFailureMessage),
        ];
        expectLater(bloc.stream.asBroadcastStream(), emitsInOrder(expected));
        //act
        bloc.add(const LoadDownloadPageImage());
      },
    );
  });
}
