import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/search_active_model.dart';
import '../../domain/entities/search_idle_model.dart';
import '../../domain/repository/i_search_repo.dart';
import '../datasources/get_top_search_data.dart';
import '../datasources/search_the_query.dart';

@LazySingleton(as: ISearchRepo)
@Injectable()
class SearchRepository implements ISearchRepo {
  final GetTopSearchData topSearchData;
  final SearchTheQuery searchTheQuery;

  SearchRepository({required this.searchTheQuery, required this.topSearchData});

  @override
  Future<Either<Failure, SearchIdleModel>> getSearchIdleData() async {
    try {
      final response = await topSearchData.getData();
      return right(response.toDomain());
    } on ServerException catch (_) {
      return left(const ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SearchActiveModel>> getSearchResults({required String query}) async {
    try {
      final response = await searchTheQuery.getSearchData(query);
      return right(response.toDomain());
    } on ServerException catch (_) {
      return left(const ServerFailure());
    }
  }
}
