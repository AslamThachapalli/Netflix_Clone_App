part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.loadSearchIdleScreen() = LoadSearchIdleScreen;
  const factory SearchEvent.startSearching(String query) = StartSearching;
}
