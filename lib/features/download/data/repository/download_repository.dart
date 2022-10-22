import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/download.dart';
import '../../domain/repository/i_download_repo.dart';
import '../datasources/get_download_page_image_url.dart';

@LazySingleton(as: IDownloadRepo)
@Injectable()
class DownloadRepository implements IDownloadRepo {
  final GetDownloadPageImageUrl _getDownloadPageImageUrl;
  DownloadRepository(this._getDownloadPageImageUrl);

  @override
  Future<Either<Failure, Download>> getDownloadLink() async {
    try {
      final response = await _getDownloadPageImageUrl.getImageUrl();
      return right(response.toDomain());
    } on ServerException catch (_) {
      return left(const ServerFailure());
    }
  }
}
