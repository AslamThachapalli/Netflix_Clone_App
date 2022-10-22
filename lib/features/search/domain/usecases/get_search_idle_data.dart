import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/search_idle_model.dart';
import '../repository/i_search_repo.dart';

@LazySingleton()
@Injectable()
class GetSearchIdleData implements Usecase<SearchIdleModel, NoParams> {
  final ISearchRepo _searchRepo;
  GetSearchIdleData(this._searchRepo);

  @override
  Future<Either<Failure, SearchIdleModel>> call(NoParams params) async {
    return await _searchRepo.getSearchIdleData();
  }
}
