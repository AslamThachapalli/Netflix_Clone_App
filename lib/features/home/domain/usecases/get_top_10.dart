import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/i_home_repo.dart';
import '../entities/home.dart';

@LazySingleton()
@Injectable()
class GetTop10 implements Usecase<Home, NoParams> {
  final IHomeRepo _iHomeRepo;
  GetTop10(this._iHomeRepo);

  @override
  Future<Either<Failure, Home>> call(NoParams params) async {
    return await _iHomeRepo.getTop10();
  }
}
