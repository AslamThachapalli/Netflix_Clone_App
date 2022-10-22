part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.loadInProgress() = LoadInProgress;
  const factory SearchState.searchIdleScreenLoaded({
    required List<String> imageUrlList,
    required List<String> titleList,
  }) = SearchIdleScreenLoaded;
  const factory SearchState.searchResultLoaded({
    required List<String> imageUrlList,
  }) = SearchResultLoaded;
  const factory SearchState.loadFailure({
    required String message,
  }) = LoadFailure;
}
