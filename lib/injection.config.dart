// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injectable_module/http_injectable_module.dart' as _i23;
import 'features/download/data/datasources/get_download_page_image_url.dart'
    as _i5;
import 'features/download/data/repository/download_repository.dart' as _i9;
import 'features/download/domain/repository/i_download_repo.dart' as _i8;
import 'features/download/domain/usecases/get_download_link.dart' as _i14;
import 'features/download/presentation/bloc/download_bloc.dart' as _i19;
import 'features/new_&_hot/data/datasources/get_coming_soon_data.dart' as _i4;
import 'features/new_&_hot/data/datasources/get_everyones_watching_data.dart'
    as _i6;
import 'features/new_&_hot/data/repository/new_hot_repository.dart' as _i11;
import 'features/new_&_hot/domain/repository/i_new_hot_repo.dart' as _i10;
import 'features/new_&_hot/domain/usecases/get_coming_soon.dart' as _i13;
import 'features/new_&_hot/domain/usecases/get_everyones_watching.dart' as _i15;
import 'features/new_&_hot/presentation/bloc/new_and_hot_bloc.dart' as _i18;
import 'features/search/data/datasources/get_top_search_data.dart' as _i7;
import 'features/search/data/datasources/search_the_query.dart' as _i12;
import 'features/search/data/repository/search_repository.dart' as _i17;
import 'features/search/domain/repository/i_search_repo.dart' as _i16;
import 'features/search/domain/usecases/get_search_idle_data.dart' as _i20;
import 'features/search/domain/usecases/get_search_results.dart' as _i21;
import 'features/search/presentation/bloc/search_bloc.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.GetComingSoonData>(
      () => _i4.GetComingSoonData(get<_i3.Client>()));
  gh.lazySingleton<_i5.GetDownloadPageImageUrl>(
      () => _i5.GetDownloadPageImageUrl(get<_i3.Client>()));
  gh.lazySingleton<_i6.GetEveryOnesWatchingData>(
      () => _i6.GetEveryOnesWatchingData(get<_i3.Client>()));
  gh.lazySingleton<_i7.GetTopSearchData>(
      () => _i7.GetTopSearchData(get<_i3.Client>()));
  gh.lazySingleton<_i8.IDownloadRepo>(
      () => _i9.DownloadRepository(get<_i5.GetDownloadPageImageUrl>()));
  gh.lazySingleton<_i10.INewAndHotRepo>(() => _i11.NewAndHotRepository(
        comingSoonData: get<_i4.GetComingSoonData>(),
        everyOnesWatchingData: get<_i6.GetEveryOnesWatchingData>(),
      ));
  gh.lazySingleton<_i12.SearchTheQuery>(
      () => _i12.SearchTheQuery(get<_i3.Client>()));
  gh.lazySingleton<_i13.GetComingSoon>(
      () => _i13.GetComingSoon(get<_i10.INewAndHotRepo>()));
  gh.lazySingleton<_i14.GetDownloadLink>(
      () => _i14.GetDownloadLink(get<_i8.IDownloadRepo>()));
  gh.lazySingleton<_i15.GetEveryOnesWatching>(
      () => _i15.GetEveryOnesWatching(get<_i10.INewAndHotRepo>()));
  gh.lazySingleton<_i16.ISearchRepo>(() => _i17.SearchRepository(
        searchTheQuery: get<_i12.SearchTheQuery>(),
        topSearchData: get<_i7.GetTopSearchData>(),
      ));
  gh.factory<_i18.NewAndHotBloc>(() => _i18.NewAndHotBloc(
        getComingSoon: get<_i13.GetComingSoon>(),
        getEveryOnesWatching: get<_i15.GetEveryOnesWatching>(),
      ));
  gh.factory<_i19.DownloadBloc>(
      () => _i19.DownloadBloc(get<_i14.GetDownloadLink>()));
  gh.lazySingleton<_i20.GetSearchIdleData>(
      () => _i20.GetSearchIdleData(get<_i16.ISearchRepo>()));
  gh.lazySingleton<_i21.GetSearchResults>(
      () => _i21.GetSearchResults(get<_i16.ISearchRepo>()));
  gh.factory<_i22.SearchBloc>(() => _i22.SearchBloc(
        searchIdleData: get<_i20.GetSearchIdleData>(),
        searchResults: get<_i21.GetSearchResults>(),
      ));
  return get;
}

class _$HttpInjectableModule extends _i23.HttpInjectableModule {}
