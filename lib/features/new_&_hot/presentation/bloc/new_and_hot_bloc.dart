import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/get_coming_soon.dart';
import '../../domain/usecases/get_everyones_watching.dart' as ev;

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';

part 'new_and_hot_bloc.freezed.dart';

const failureMessage = 'Unexpected Error Occurred.\nFailed to Load Data';

@Injectable()
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final GetComingSoon getComingSoon;
  final ev.GetEveryOnesWatching getEveryOnesWatching;

  NewAndHotBloc({
    required this.getComingSoon,
    required this.getEveryOnesWatching,
  }) : super(const NewAndHotState.initial()) {
    on<LoadComingSoonScreen>((event, emit) async {
      emit(const LoadInProgress());
      final result = await getComingSoon(Params(event.page));
      result.fold(
        (failure) => emit(const LoadFailure(message: failureMessage)),
        (comingSoon) => emit(ComingSoonScreenLoaded(
          title: comingSoon.title,
          overview: comingSoon.overview,
          imageUrl: comingSoon.imageUrl,
          date: comingSoon.releaseDate,
        )),
      );
    });
    on<LoadEveryOnesWatchingScreen>((event, emit) async {
      emit(const LoadInProgress());
      final result = await getEveryOnesWatching(ev.Params(event.page));
      result.fold(
        (failure) => emit(const LoadFailure(message: failureMessage)),
        (everyOnesWatching) => emit(EveryOnesWatchingScreenLoaded(
          title: everyOnesWatching.title,
          overview: everyOnesWatching.overview,
          imageUrl: everyOnesWatching.imageUrl,
        )),
      );
    });
  }
}
