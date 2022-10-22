import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/get_search_idle_data.dart';
import '../../domain/usecases/get_search_results.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

const serverFailureMessage = 'Server Failure';
const searchFailure = 'Failed to Load Results';

@Injectable()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetSearchIdleData searchIdleData;
  final GetSearchResults searchResults;

  SearchBloc({
    required this.searchIdleData,
    required this.searchResults,
  }) : super(const SearchState.initial()) {
    on<LoadSearchIdleScreen>((event, emit) async {
      emit(const LoadInProgress());
      final idleData = await searchIdleData(NoParams());
      idleData.fold(
        (failure) => emit(const LoadFailure(message: serverFailureMessage)),
        (dataList) => emit(SearchIdleScreenLoaded(
          imageUrlList: dataList.imageList,
          titleList: dataList.titleList,
        )),
      );
    });
    on<StartSearching>((event, emit) async {
      emit(const LoadInProgress());
      final response = await searchResults(Params(query: event.query));
      response.fold(
        (failure) => emit(const LoadFailure(message: searchFailure)),
        (result) => emit(SearchResultLoaded(imageUrlList: result.imageList)),
      );
    });
  }
}
