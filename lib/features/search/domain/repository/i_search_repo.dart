import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/search_idle_model.dart';
import '../entities/search_active_model.dart';

abstract class ISearchRepo {
  Future<Either<Failure, SearchIdleModel>> getSearchIdleData();
  Future<Either<Failure, SearchActiveModel>> getSearchResults({
    required String query,
  });
}
