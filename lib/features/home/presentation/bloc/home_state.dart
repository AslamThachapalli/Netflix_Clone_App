part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loadInProgress() = LoadInProgress;
  const factory HomeState.loadSuccess({
    required List<String> releasedInPastYearImageUrls,
    required List<String> southIndianCinemaImageUrls,
    required List<String> tenseDramasImageUrls,
    required List<String> top10TvShowsImageUrls,
    required List<String> trendingNowImageUrls,
  }) = LoadSuccess;
  const factory HomeState.loadFailure({required String message}) = LoadFailure;
}
