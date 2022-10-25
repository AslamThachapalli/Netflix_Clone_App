import 'package:dartz/dartz.dart';
import 'package:netflix_clone/features/new_&_hot/domain/entities/coming_soon.dart';

import '../../../../core/errors/failures.dart';
import '../entities/everyones_watching.dart';

abstract class INewAndHotRepo {
  Future<Either<Failure, ComingSoon>> getComingSoon({required int page});
  Future<Either<Failure, EveryOnesWatching>> getEveryOnesWatching({required int page});
}
