import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:netflix_clone/core/errors/failures.dart';
import 'package:netflix_clone/core/usecases/usecase.dart';
import 'package:netflix_clone/features/new_&_hot/domain/entities/everyones_watching.dart';

import '../repository/i_new_hot_repo.dart';

@LazySingleton()
@Injectable()
class GetEveryOnesWatching implements Usecase<EveryOnesWatching, Params> {
  final INewAndHotRepo _newAndHotRepo;
  GetEveryOnesWatching(this._newAndHotRepo);
  @override
  Future<Either<Failure, EveryOnesWatching>> call(Params params) async {
    return await _newAndHotRepo.getEveryOnesWatching(page: params.page);
  }
}

class Params extends Equatable {
  final int page;
  const Params(this.page);

  @override
  List<Object?> get props => [page];
}
