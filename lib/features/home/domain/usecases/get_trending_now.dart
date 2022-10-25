import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/i_home_repo.dart';
import '../entities/home.dart';

@LazySingleton()
@Injectable()
class GetTrendingNow implements Usecase<Home, NoParams> {
  final IHomeRepo _iHomeRepo;
  GetTrendingNow(this._iHomeRepo);

  @override
  Future<Either<Failure, Home>> call(NoParams params) async {
    return await _iHomeRepo.getTrendingNow();
  }
}
