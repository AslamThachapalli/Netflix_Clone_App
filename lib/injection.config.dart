// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injectable_module/http_injectable_module.dart' as _i9;
import 'features/download/data/datasources/get_download_page_image_url.dart'
    as _i4;
import 'features/download/data/repository/download_repository.dart' as _i6;
import 'features/download/domain/repository/i_download_repo.dart' as _i5;
import 'features/download/domain/usecases/get_download_link.dart' as _i7;
import 'features/download/presentation/bloc/download_bloc.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final httpInjectableModule = _$HttpInjectableModule();
  gh.lazySingleton<_i3.Client>(() => httpInjectableModule.client);
  gh.lazySingleton<_i4.GetDownloadPageImageUrl>(
      () => _i4.GetDownloadPageImageUrl(get<_i3.Client>()));
  gh.lazySingleton<_i5.IDownloadRepo>(
      () => _i6.DownloadRepository(get<_i4.GetDownloadPageImageUrl>()));
  gh.lazySingleton<_i7.GetDownloadLink>(
      () => _i7.GetDownloadLink(get<_i5.IDownloadRepo>()));
  gh.factory<_i8.DownloadBloc>(
      () => _i8.DownloadBloc(get<_i7.GetDownloadLink>()));
  return get;
}

class _$HttpInjectableModule extends _i9.HttpInjectableModule {}
