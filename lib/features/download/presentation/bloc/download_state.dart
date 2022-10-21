part of 'download_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState.initial() = Initial;
  const factory DownloadState.loadInProgress() = LoadInProgress;
  const factory DownloadState.loadSuccess({required List<String> imageUrlList}) = LoadSuccess;
  const factory DownloadState.loadFailure({required String message}) = LoadFailure;
}
