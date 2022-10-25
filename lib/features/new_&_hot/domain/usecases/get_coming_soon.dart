import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/i_new_hot_repo.dart';
import '../entities/coming_soon.dart';

@LazySingleton()
@Injectable()
class GetComingSoon implements Usecase<ComingSoon, Params> {
  final INewAndHotRepo _newAndHotRepo;
  GetComingSoon(this._newAndHotRepo);

  @override
  Future<Either<Failure, ComingSoon>> call(Params params) async {
    return await _newAndHotRepo.getComingSoon(page: params.page);
  }
}

class Params extends Equatable {
  final int page;
  const Params(this.page);

  @override
  List<Object?> get props => [page];
}
