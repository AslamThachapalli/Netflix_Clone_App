// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injectable_module/http_injectable_module.dart' as _i36;
import 'features/download/data/datasources/get_download_page_image_url.dart'
    as _i5;
import 'features/download/data/repository/download_repository.dart' as _i14;
import 'features/download/domain/repository/i_download_repo.dart' as _i13;
import 'features/download/domain/usecases/get_download_link.dart' as _i21;
import 'features/download/presentation/bloc/download_bloc.dart' as _i32;
import 'features/home/data/datasources/get_released_in_past_year_data.dart'
    as _i7;
import 'features/home/data/datasources/get_south_indian_cinema_data.dart'
    as _i8;
import 'features/home/data/datasources/get_tense_dramas_data.dart' as _i9;
import 'features/home/data/datasources/get_top_10_data.dart' as _i10;
import 'features/home/data/datasources/get_trending_now_data.dart' as _i12;
import 'features/home/data/repository/home_repository.dart' as _i16;
import 'features/home/domain/repository/i_home_repo.dart' as _i15;
import 'features/home/domain/usecases/get_released_in_past_year.dart' as _i23;
import 'features/home/domain/usecases/get_south_indian_cinema.dart' as _i24;
import 'features/home/domain/usecases/get_tense_dramas.dart' as _i25;
import 'features/home/domain/usecases/get_top_10.dart' as _i26;
import 'features/home/domain/usecases/get_trending_now.dart' as _i27;
import 'features/home/presentation/bloc/home_bloc.dart' as _i28;
import 'features/new_&_hot/data/datasources/get_coming_soon_data.dart' as _i4;
import 'features/new_&_hot/data/datasources/get_everyones_watching_data.dart'
    as _i6;
import 'features/new_&_hot/data/repository/new_hot_repository.dart' as _i18;
import 'features/new_&_hot/domain/repository/i_new_hot_repo.dart' as _i17;
import 'features/new_&_hot/domain/usecases/get_coming_soon.dart' as _i20;
import 'features/new_&_hot/domain/usecases/get_everyones_watching.dart' as _i22;
import 'features/new_&_hot/presentation/bloc/new_and_hot_bloc.dart' as _i31;
import 'features/search/data/datasources/get_top_search_data.dart' as _i11;
import 'features/search/data/datasources/search_the_query.dart' as _i19;
import 'features/search/data/repository/search_repository.dart' as _i30;
import 'features/search/domain/repository/i_search_repo.dart' as _i29;
import 'features/search/domain/usecases/get_search_idle_data.dart' as _i33;
import 'features/search/domain/usecases/get_search_results.dart' as _i34;
import 'features/search/presentation/bloc/search_bloc.dart'
    as _i35; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.GetReleasedInPastYearData>(
      () => _i7.GetReleasedInPastYearData(get<_i3.Client>()));
  gh.lazySingleton<_i8.GetSouthIndianCinemaData>(
      () => _i8.GetSouthIndianCinemaData(get<_i3.Client>()));
  gh.lazySingleton<_i9.GetTenseDramaData>(
      () => _i9.GetTenseDramaData(get<_i3.Client>()));
  gh.lazySingleton<_i10.GetTop10Data>(
      () => _i10.GetTop10Data(get<_i3.Client>()));
  gh.lazySingleton<_i11.GetTopSearchData>(
      () => _i11.GetTopSearchData(get<_i3.Client>()));
  gh.lazySingleton<_i12.GetTrendingNowData>(
      () => _i12.GetTrendingNowData(get<_i3.Client>()));
  gh.lazySingleton<_i13.IDownloadRepo>(
      () => _i14.DownloadRepository(get<_i5.GetDownloadPageImageUrl>()));
  gh.lazySingleton<_i15.IHomeRepo>(() => _i16.HomeRepository(
        releasedInPastYearData: get<_i7.GetReleasedInPastYearData>(),
        southIndianCinemaData: get<_i8.GetSouthIndianCinemaData>(),
        tenseDramaData: get<_i9.GetTenseDramaData>(),
        top10data: get<_i10.GetTop10Data>(),
        trendingNowData: get<_i12.GetTrendingNowData>(),
      ));
  gh.lazySingleton<_i17.INewAndHotRepo>(() => _i18.NewAndHotRepository(
        comingSoonData: get<_i4.GetComingSoonData>(),
        everyOnesWatchingData: get<_i6.GetEveryOnesWatchingData>(),
      ));
  gh.lazySingleton<_i19.SearchTheQuery>(
      () => _i19.SearchTheQuery(get<_i3.Client>()));
  gh.lazySingleton<_i20.GetComingSoon>(
      () => _i20.GetComingSoon(get<_i17.INewAndHotRepo>()));
  gh.lazySingleton<_i21.GetDownloadLink>(
      () => _i21.GetDownloadLink(get<_i13.IDownloadRepo>()));
  gh.lazySingleton<_i22.GetEveryOnesWatching>(
      () => _i22.GetEveryOnesWatching(get<_i17.INewAndHotRepo>()));
  gh.lazySingleton<_i23.GetReleasedInPastYear>(
      () => _i23.GetReleasedInPastYear(get<_i15.IHomeRepo>()));
  gh.lazySingleton<_i24.GetSouthIndianCinema>(
      () => _i24.GetSouthIndianCinema(get<_i15.IHomeRepo>()));
  gh.lazySingleton<_i25.GetTenseDrama>(
      () => _i25.GetTenseDrama(get<_i15.IHomeRepo>()));
  gh.lazySingleton<_i26.GetTop10>(() => _i26.GetTop10(get<_i15.IHomeRepo>()));
  gh.lazySingleton<_i27.GetTrendingNow>(
      () => _i27.GetTrendingNow(get<_i15.IHomeRepo>()));
  gh.factory<_i28.HomeBloc>(() => _i28.HomeBloc(
        releasedInPastYear: get<_i23.GetReleasedInPastYear>(),
        southIndianCinema: get<_i24.GetSouthIndianCinema>(),
        tenseDrama: get<_i25.GetTenseDrama>(),
        top10: get<_i26.GetTop10>(),
        trendingNow: get<_i27.GetTrendingNow>(),
      ));
  gh.lazySingleton<_i29.ISearchRepo>(() => _i30.SearchRepository(
        searchTheQuery: get<_i19.SearchTheQuery>(),
        topSearchData: get<_i11.GetTopSearchData>(),
      ));
  gh.factory<_i31.NewAndHotBloc>(() => _i31.NewAndHotBloc(
        getComingSoon: get<_i20.GetComingSoon>(),
        getEveryOnesWatching: get<_i22.GetEveryOnesWatching>(),
      ));
  gh.factory<_i32.DownloadBloc>(
      () => _i32.DownloadBloc(get<_i21.GetDownloadLink>()));
  gh.lazySingleton<_i33.GetSearchIdleData>(
      () => _i33.GetSearchIdleData(get<_i29.ISearchRepo>()));
  gh.lazySingleton<_i34.GetSearchResults>(
      () => _i34.GetSearchResults(get<_i29.ISearchRepo>()));
  gh.factory<_i35.SearchBloc>(() => _i35.SearchBloc(
        searchIdleData: get<_i33.GetSearchIdleData>(),
        searchResults: get<_i34.GetSearchResults>(),
      ));
  return get;
}

class _$HttpInjectableModule extends _i36.HttpInjectableModule {}
