import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/home.dart';

abstract class IHomeRepo {
  Future<Either<Failure, Home>> getReleasedInPastYear();
  Future<Either<Failure, Home>> getTrendingNow();
  Future<Either<Failure, Home>> getTop10();
  Future<Either<Failure, Home>> getTenseDrama();
  Future<Either<Failure, Home>> getSouthIndianCinema();
}
