// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injectable_module/http_injectable_module.dart' as _i16;
import 'features/download/data/datasources/get_download_page_image_url.dart'
    as _i4;
import 'features/download/data/repository/download_repository.dart' as _i7;
import 'features/download/domain/repository/i_download_repo.dart' as _i6;
import 'features/download/domain/usecases/get_download_link.dart' as _i9;
import 'features/download/presentation/bloc/download_bloc.dart' as _i12;
import 'features/search/data/datasources/get_top_search_data.dart' as _i5;
import 'features/search/data/datasources/search_the_query.dart' as _i8;
import 'features/search/data/repository/search_repository.dart' as _i11;
import 'features/search/domain/repository/i_search_repo.dart' as _i10;
import 'features/search/domain/usecases/get_search_idle_data.dart' as _i13;
import 'features/search/domain/usecases/get_search_results.dart' as _i14;
import 'features/search/presentation/bloc/search_bloc.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.GetTopSearchData>(
      () => _i5.GetTopSearchData(get<_i3.Client>()));
  gh.lazySingleton<_i6.IDownloadRepo>(
      () => _i7.DownloadRepository(get<_i4.GetDownloadPageImageUrl>()));
  gh.lazySingleton<_i8.SearchTheQuery>(
      () => _i8.SearchTheQuery(get<_i3.Client>()));
  gh.lazySingleton<_i9.GetDownloadLink>(
      () => _i9.GetDownloadLink(get<_i6.IDownloadRepo>()));
  gh.lazySingleton<_i10.ISearchRepo>(() => _i11.SearchRepository(
        searchTheQuery: get<_i8.SearchTheQuery>(),
        topSearchData: get<_i5.GetTopSearchData>(),
      ));
  gh.factory<_i12.DownloadBloc>(
      () => _i12.DownloadBloc(get<_i9.GetDownloadLink>()));
  gh.lazySingleton<_i13.GetSearchIdleData>(
      () => _i13.GetSearchIdleData(get<_i10.ISearchRepo>()));
  gh.lazySingleton<_i14.GetSearchResults>(
      () => _i14.GetSearchResults(get<_i10.ISearchRepo>()));
  gh.factory<_i15.SearchBloc>(() => _i15.SearchBloc(
        searchIdleData: get<_i13.GetSearchIdleData>(),
        searchResults: get<_i14.GetSearchResults>(),
      ));
  return get;
}

class _$HttpInjectableModule extends _i16.HttpInjectableModule {}
