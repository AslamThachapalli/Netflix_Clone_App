part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState.initial() = Initial;
  const factory NewAndHotState.loadInProgress() = LoadInProgress;
  const factory NewAndHotState.comingSoonScreenLoaded({
    required List<String> title,
    required List<String> overview,
    required List<String> imageUrl,
    required List<String> date,
  }) = ComingSoonScreenLoaded;
  const factory NewAndHotState.everyOnesWatchingScreenLoaded({
    required List<String> title,
    required List<String> overview,
    required List<String> imageUrl,
  }) = EveryOnesWatchingScreenLoaded;
  const factory NewAndHotState.loadFailure({
    required String message,
  }) = LoadFailure;
}
