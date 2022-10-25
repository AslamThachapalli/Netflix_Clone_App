// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHomeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHomeScreen value) loadHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadHomeScreen value)? loadHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeScreen value)? loadHomeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadHomeScreenCopyWith<$Res> {
  factory _$$LoadHomeScreenCopyWith(
          _$LoadHomeScreen value, $Res Function(_$LoadHomeScreen) then) =
      __$$LoadHomeScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadHomeScreenCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadHomeScreen>
    implements _$$LoadHomeScreenCopyWith<$Res> {
  __$$LoadHomeScreenCopyWithImpl(
      _$LoadHomeScreen _value, $Res Function(_$LoadHomeScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadHomeScreen implements LoadHomeScreen {
  const _$LoadHomeScreen();

  @override
  String toString() {
    return 'HomeEvent.loadHomeScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadHomeScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHomeScreen,
  }) {
    return loadHomeScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHomeScreen,
  }) {
    return loadHomeScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHomeScreen,
    required TResult orElse(),
  }) {
    if (loadHomeScreen != null) {
      return loadHomeScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHomeScreen value) loadHomeScreen,
  }) {
    return loadHomeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadHomeScreen value)? loadHomeScreen,
  }) {
    return loadHomeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeScreen value)? loadHomeScreen,
    required TResult orElse(),
  }) {
    if (loadHomeScreen != null) {
      return loadHomeScreen(this);
    }
    return orElse();
  }
}

abstract class LoadHomeScreen implements HomeEvent {
  const factory LoadHomeScreen() = _$LoadHomeScreen;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HomeState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadInProgressCopyWith<$Res> {
  factory _$$LoadInProgressCopyWith(
          _$LoadInProgress value, $Res Function(_$LoadInProgress) then) =
      __$$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadInProgress>
    implements _$$LoadInProgressCopyWith<$Res> {
  __$$LoadInProgressCopyWithImpl(
      _$LoadInProgress _value, $Res Function(_$LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'HomeState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements HomeState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class _$$LoadSuccessCopyWith<$Res> {
  factory _$$LoadSuccessCopyWith(
          _$LoadSuccess value, $Res Function(_$LoadSuccess) then) =
      __$$LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<String> releasedInPastYearImageUrls,
      List<String> southIndianCinemaImageUrls,
      List<String> tenseDramasImageUrls,
      List<String> top10TvShowsImageUrls,
      List<String> trendingNowImageUrls});
}

/// @nodoc
class __$$LoadSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadSuccess>
    implements _$$LoadSuccessCopyWith<$Res> {
  __$$LoadSuccessCopyWithImpl(
      _$LoadSuccess _value, $Res Function(_$LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releasedInPastYearImageUrls = null,
    Object? southIndianCinemaImageUrls = null,
    Object? tenseDramasImageUrls = null,
    Object? top10TvShowsImageUrls = null,
    Object? trendingNowImageUrls = null,
  }) {
    return _then(_$LoadSuccess(
      releasedInPastYearImageUrls: null == releasedInPastYearImageUrls
          ? _value._releasedInPastYearImageUrls
          : releasedInPastYearImageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      southIndianCinemaImageUrls: null == southIndianCinemaImageUrls
          ? _value._southIndianCinemaImageUrls
          : southIndianCinemaImageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tenseDramasImageUrls: null == tenseDramasImageUrls
          ? _value._tenseDramasImageUrls
          : tenseDramasImageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      top10TvShowsImageUrls: null == top10TvShowsImageUrls
          ? _value._top10TvShowsImageUrls
          : top10TvShowsImageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trendingNowImageUrls: null == trendingNowImageUrls
          ? _value._trendingNowImageUrls
          : trendingNowImageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(
      {required final List<String> releasedInPastYearImageUrls,
      required final List<String> southIndianCinemaImageUrls,
      required final List<String> tenseDramasImageUrls,
      required final List<String> top10TvShowsImageUrls,
      required final List<String> trendingNowImageUrls})
      : _releasedInPastYearImageUrls = releasedInPastYearImageUrls,
        _southIndianCinemaImageUrls = southIndianCinemaImageUrls,
        _tenseDramasImageUrls = tenseDramasImageUrls,
        _top10TvShowsImageUrls = top10TvShowsImageUrls,
        _trendingNowImageUrls = trendingNowImageUrls;

  final List<String> _releasedInPastYearImageUrls;
  @override
  List<String> get releasedInPastYearImageUrls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releasedInPastYearImageUrls);
  }

  final List<String> _southIndianCinemaImageUrls;
  @override
  List<String> get southIndianCinemaImageUrls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianCinemaImageUrls);
  }

  final List<String> _tenseDramasImageUrls;
  @override
  List<String> get tenseDramasImageUrls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramasImageUrls);
  }

  final List<String> _top10TvShowsImageUrls;
  @override
  List<String> get top10TvShowsImageUrls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top10TvShowsImageUrls);
  }

  final List<String> _trendingNowImageUrls;
  @override
  List<String> get trendingNowImageUrls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNowImageUrls);
  }

  @override
  String toString() {
    return 'HomeState.loadSuccess(releasedInPastYearImageUrls: $releasedInPastYearImageUrls, southIndianCinemaImageUrls: $southIndianCinemaImageUrls, tenseDramasImageUrls: $tenseDramasImageUrls, top10TvShowsImageUrls: $top10TvShowsImageUrls, trendingNowImageUrls: $trendingNowImageUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccess &&
            const DeepCollectionEquality().equals(
                other._releasedInPastYearImageUrls,
                _releasedInPastYearImageUrls) &&
            const DeepCollectionEquality().equals(
                other._southIndianCinemaImageUrls,
                _southIndianCinemaImageUrls) &&
            const DeepCollectionEquality()
                .equals(other._tenseDramasImageUrls, _tenseDramasImageUrls) &&
            const DeepCollectionEquality()
                .equals(other._top10TvShowsImageUrls, _top10TvShowsImageUrls) &&
            const DeepCollectionEquality()
                .equals(other._trendingNowImageUrls, _trendingNowImageUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_releasedInPastYearImageUrls),
      const DeepCollectionEquality().hash(_southIndianCinemaImageUrls),
      const DeepCollectionEquality().hash(_tenseDramasImageUrls),
      const DeepCollectionEquality().hash(_top10TvShowsImageUrls),
      const DeepCollectionEquality().hash(_trendingNowImageUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessCopyWith<_$LoadSuccess> get copyWith =>
      __$$LoadSuccessCopyWithImpl<_$LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) {
    return loadSuccess(releasedInPastYearImageUrls, southIndianCinemaImageUrls,
        tenseDramasImageUrls, top10TvShowsImageUrls, trendingNowImageUrls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) {
    return loadSuccess?.call(
        releasedInPastYearImageUrls,
        southIndianCinemaImageUrls,
        tenseDramasImageUrls,
        top10TvShowsImageUrls,
        trendingNowImageUrls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(
          releasedInPastYearImageUrls,
          southIndianCinemaImageUrls,
          tenseDramasImageUrls,
          top10TvShowsImageUrls,
          trendingNowImageUrls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements HomeState {
  const factory LoadSuccess(
      {required final List<String> releasedInPastYearImageUrls,
      required final List<String> southIndianCinemaImageUrls,
      required final List<String> tenseDramasImageUrls,
      required final List<String> top10TvShowsImageUrls,
      required final List<String> trendingNowImageUrls}) = _$LoadSuccess;

  List<String> get releasedInPastYearImageUrls;
  List<String> get southIndianCinemaImageUrls;
  List<String> get tenseDramasImageUrls;
  List<String> get top10TvShowsImageUrls;
  List<String> get trendingNowImageUrls;
  @JsonKey(ignore: true)
  _$$LoadSuccessCopyWith<_$LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureCopyWith<$Res> {
  factory _$$LoadFailureCopyWith(
          _$LoadFailure value, $Res Function(_$LoadFailure) then) =
      __$$LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadFailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadFailure>
    implements _$$LoadFailureCopyWith<$Res> {
  __$$LoadFailureCopyWithImpl(
      _$LoadFailure _value, $Res Function(_$LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureCopyWith<_$LoadFailure> get copyWith =>
      __$$LoadFailureCopyWithImpl<_$LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) {
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) {
    return loadFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<String> releasedInPastYearImageUrls,
            List<String> southIndianCinemaImageUrls,
            List<String> tenseDramasImageUrls,
            List<String> top10TvShowsImageUrls,
            List<String> trendingNowImageUrls)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements HomeState {
  const factory LoadFailure({required final String message}) = _$LoadFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadFailureCopyWith<_$LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
