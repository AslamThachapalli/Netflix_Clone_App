import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/download.dart';

abstract class IDownloadRepo {
  Future<Either<Failure, Download>> getDownloadLink();
}
