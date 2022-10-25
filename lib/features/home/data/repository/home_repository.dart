import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/home.dart';
import '../../domain/repository/i_home_repo.dart';
import '../datasources/get_released_in_past_year_data.dart';
import '../datasources/get_south_indian_cinema_data.dart';
import '../datasources/get_tense_dramas_data.dart';
import '../datasources/get_top_10_data.dart';
import '../datasources/get_trending_now_data.dart';
import '../models/home_dto.dart';

@LazySingleton(as: IHomeRepo)
@Injectable()
class HomeRepository implements IHomeRepo {
  final GetReleasedInPastYearData releasedInPastYearData;
  final GetSouthIndianCinemaData southIndianCinemaData;
  final GetTenseDramaData tenseDramaData;
  final GetTop10Data top10data;
  final GetTrendingNowData trendingNowData;

  HomeRepository({
    required this.releasedInPastYearData,
    required this.southIndianCinemaData,
    required this.tenseDramaData,
    required this.top10data,
    required this.trendingNowData,
  });

  @override
  Future<Either<Failure, Home>> getReleasedInPastYear() async {
    return await _getData(() => releasedInPastYearData.getData());
  }

  @override
  Future<Either<Failure, Home>> getSouthIndianCinema() async {
    return await _getData(() => southIndianCinemaData.getData());
  }

  @override
  Future<Either<Failure, Home>> getTenseDrama() async {
    return await _getData(() => tenseDramaData.getData());
  }

  @override
  Future<Either<Failure, Home>> getTop10() async {
    return await _getData(() => top10data.getData());
  }

  @override
  Future<Either<Failure, Home>> getTrendingNow() async {
    return await _getData(() => trendingNowData.getData());
  }

  Future<Either<Failure, Home>> _getData(
    Future<HomeDto> Function() dataType,
  ) async {
    try {
      final response = await dataType();
      return right(response.toDomain());
    } on ServerException catch (_) {
      return left(const ServerFailure());
    }
  }
}
