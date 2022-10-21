import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/usecases/usecase.dart';

import '../../domain/usecases/get_download_link.dart';

part 'download_event.dart';
part 'download_state.dart';

part 'download_bloc.freezed.dart';

const serverFailureMessage = 'Server Failure';

@Injectable()
class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final GetDownloadLink _getDownloadLink;

  DownloadBloc(this._getDownloadLink) : super(const DownloadState.initial()) {
    on<LoadDownloadPageImage>((event, emit) async {
      emit(const LoadInProgress());
      final failureOrSuccess = await _getDownloadLink(NoParams());
      failureOrSuccess.fold(
        (failure) => emit(const LoadFailure(message: serverFailureMessage)),
        (download) => emit(LoadSuccess(imageUrlList: download.imageUrlList)),
      );
    });
  }
}
