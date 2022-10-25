import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/get_released_in_past_year.dart';
import '../../domain/usecases/get_south_indian_cinema.dart';
import '../../domain/usecases/get_tense_dramas.dart';
import '../../domain/usecases/get_top_10.dart';
import '../../domain/usecases/get_trending_now.dart';

part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

const failureMessage = '''An Unexpected Error Occurred.\nPlease Try After Sometime.\n
If The Error Persists Please Contact Support.''';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetReleasedInPastYear releasedInPastYear;
  final GetSouthIndianCinema southIndianCinema;
  final GetTenseDrama tenseDrama;
  final GetTop10 top10;
  final GetTrendingNow trendingNow;

  HomeBloc({
    required this.releasedInPastYear,
    required this.southIndianCinema,
    required this.tenseDrama,
    required this.top10,
    required this.trendingNow,
  }) : super(const HomeState.initial()) {
    on<LoadHomeScreen>((event, emit) async {
      emit(const LoadInProgress());

      final dataLists = await Future.wait([
        releasedInPastYear(NoParams()),
        southIndianCinema(NoParams()),
        tenseDrama(NoParams()),
        top10(NoParams()),
        trendingNow(NoParams()),
      ]);

      if (dataLists.any((element) => element.isLeft())) {
        emit(const LoadFailure(message: failureMessage));
      } else {
        emit(LoadSuccess(
          releasedInPastYearImageUrls: dataLists[0].fold((_) => [], (home) => home.imageUrlList),
          southIndianCinemaImageUrls: dataLists[1].fold((_) => [], (home) => home.imageUrlList),
          tenseDramasImageUrls: dataLists[2].fold((_) => [], (home) => home.imageUrlList),
          top10TvShowsImageUrls: dataLists[3].fold((_) => [], (home) => home.imageUrlList),
          trendingNowImageUrls: dataLists[4].fold((_) => [], (home) => home.imageUrlList),
        ));
      }
    });
  }
}
