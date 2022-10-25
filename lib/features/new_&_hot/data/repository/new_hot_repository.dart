import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/coming_soon.dart';
import '../../domain/entities/everyones_watching.dart';
import '../../domain/repository/i_new_hot_repo.dart';
import '../datasources/get_coming_soon_data.dart';
import '../datasources/get_everyones_watching_data.dart';

@LazySingleton(as: INewAndHotRepo)
@Injectable()
class NewAndHotRepository implements INewAndHotRepo {
  final GetComingSoonData comingSoonData;
  final GetEveryOnesWatchingData everyOnesWatchingData;

  NewAndHotRepository({
    required this.comingSoonData,
    required this.everyOnesWatchingData,
  });

  @override
  Future<Either<Failure, ComingSoon>> getComingSoon({required int page}) async {
    try {
      final response = await comingSoonData.getComingSoonData(page);
      return right(response.toDomain());
    } on ServerException catch (_) {
      return left(const ServerFailure());
    }
  }

  @override
  Future<Either<Failure, EveryOnesWatching>> getEveryOnesWatching({required int page}) async {
    try {
      final response = await everyOnesWatchingData.getEveryOnesWatchingData(page);
      return right(response.toDomain());
    } on ServerException catch (_) {
      return left(const ServerFailure());
    }
  }
}
