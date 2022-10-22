import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/search_active_model.dart';
import '../repository/i_search_repo.dart';

@LazySingleton()
@Injectable()
class GetSearchResults implements Usecase<SearchActiveModel, Params> {
  final ISearchRepo _searchRepo;
  GetSearchResults(this._searchRepo);

  @override
  Future<Either<Failure, SearchActiveModel>> call(Params params) async {
    return await _searchRepo.getSearchResults(query: params.query);
  }
}

class Params extends Equatable {
  final String query;
  const Params({required this.query});

  @override
  List<Object?> get props => [query];
}
