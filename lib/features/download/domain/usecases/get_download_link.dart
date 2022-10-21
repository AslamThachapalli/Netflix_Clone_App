import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/download.dart';
import '../repository/i_download_repo.dart';

@LazySingleton()
@Injectable()
class GetDownloadLink implements Usecase<Download, NoParams> {
  final IDownloadRepo _downloadRepo;
  GetDownloadLink(this._downloadRepo);

  @override
  Future<Either<Failure, Download>> call(NoParams params) async {
    return await _downloadRepo.getDownloadLink();
  }
}
