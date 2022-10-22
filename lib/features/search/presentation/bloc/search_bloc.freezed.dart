// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSearchIdleScreen,
    required TResult Function(String query) startSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSearchIdleScreen,
    TResult? Function(String query)? startSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSearchIdleScreen,
    TResult Function(String query)? startSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSearchIdleScreen value) loadSearchIdleScreen,
    required TResult Function(StartSearching value) startSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSearchIdleScreen value)? loadSearchIdleScreen,
    TResult? Function(StartSearching value)? startSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSearchIdleScreen value)? loadSearchIdleScreen,
    TResult Function(StartSearching value)? startSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadSearchIdleScreenCopyWith<$Res> {
  factory _$$LoadSearchIdleScreenCopyWith(_$LoadSearchIdleScreen value,
          $Res Function(_$LoadSearchIdleScreen) then) =
      __$$LoadSearchIdleScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSearchIdleScreenCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$LoadSearchIdleScreen>
    implements _$$LoadSearchIdleScreenCopyWith<$Res> {
  __$$LoadSearchIdleScreenCopyWithImpl(_$LoadSearchIdleScreen _value,
      $Res Function(_$LoadSearchIdleScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadSearchIdleScreen implements LoadSearchIdleScreen {
  const _$LoadSearchIdleScreen();

  @override
  String toString() {
    return 'SearchEvent.loadSearchIdleScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSearchIdleScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSearchIdleScreen,
    required TResult Function(String query) startSearching,
  }) {
    return loadSearchIdleScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSearchIdleScreen,
    TResult? Function(String query)? startSearching,
  }) {
    return loadSearchIdleScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSearchIdleScreen,
    TResult Function(String query)? startSearching,
    required TResult orElse(),
  }) {
    if (loadSearchIdleScreen != null) {
      return loadSearchIdleScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSearchIdleScreen value) loadSearchIdleScreen,
    required TResult Function(StartSearching value) startSearching,
  }) {
    return loadSearchIdleScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSearchIdleScreen value)? loadSearchIdleScreen,
    TResult? Function(StartSearching value)? startSearching,
  }) {
    return loadSearchIdleScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSearchIdleScreen value)? loadSearchIdleScreen,
    TResult Function(StartSearching value)? startSearching,
    required TResult orElse(),
  }) {
    if (loadSearchIdleScreen != null) {
      return loadSearchIdleScreen(this);
    }
    return orElse();
  }
}

abstract class LoadSearchIdleScreen implements SearchEvent {
  const factory LoadSearchIdleScreen() = _$LoadSearchIdleScreen;
}

/// @nodoc
abstract class _$$StartSearchingCopyWith<$Res> {
  factory _$$StartSearchingCopyWith(
          _$StartSearching value, $Res Function(_$StartSearching) then) =
      __$$StartSearchingCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$StartSearchingCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$StartSearching>
    implements _$$StartSearchingCopyWith<$Res> {
  __$$StartSearchingCopyWithImpl(
      _$StartSearching _value, $Res Function(_$StartSearching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$StartSearching(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartSearching implements StartSearching {
  const _$StartSearching(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.startSearching(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartSearching &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartSearchingCopyWith<_$StartSearching> get copyWith =>
      __$$StartSearchingCopyWithImpl<_$StartSearching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSearchIdleScreen,
    required TResult Function(String query) startSearching,
  }) {
    return startSearching(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSearchIdleScreen,
    TResult? Function(String query)? startSearching,
  }) {
    return startSearching?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSearchIdleScreen,
    TResult Function(String query)? startSearching,
    required TResult orElse(),
  }) {
    if (startSearching != null) {
      return startSearching(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSearchIdleScreen value) loadSearchIdleScreen,
    required TResult Function(StartSearching value) startSearching,
  }) {
    return startSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSearchIdleScreen value)? loadSearchIdleScreen,
    TResult? Function(StartSearching value)? startSearching,
  }) {
    return startSearching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSearchIdleScreen value)? loadSearchIdleScreen,
    TResult Function(StartSearching value)? startSearching,
    required TResult orElse(),
  }) {
    if (startSearching != null) {
      return startSearching(this);
    }
    return orElse();
  }
}

abstract class StartSearching implements SearchEvent {
  const factory StartSearching(final String query) = _$StartSearching;

  String get query;
  @JsonKey(ignore: true)
  _$$StartSearchingCopyWith<_$StartSearching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<String> imageUrlList, List<String> titleList)
        searchIdleScreenLoaded,
    required TResult Function(List<String> imageUrlList) searchResultLoaded,
    required TResult Function(String message) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult? Function(List<String> imageUrlList)? searchResultLoaded,
    TResult? Function(String message)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult Function(List<String> imageUrlList)? searchResultLoaded,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(SearchIdleScreenLoaded value)
        searchIdleScreenLoaded,
    required TResult Function(SearchResultLoaded value) searchResultLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult? Function(SearchResultLoaded value)? searchResultLoaded,
    TResult? Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult Function(SearchResultLoaded value)? searchResultLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SearchState.initial()';
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
    required TResult Function(List<String> imageUrlList, List<String> titleList)
        searchIdleScreenLoaded,
    required TResult Function(List<String> imageUrlList) searchResultLoaded,
    required TResult Function(String message) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult? Function(List<String> imageUrlList)? searchResultLoaded,
    TResult? Function(String message)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult Function(List<String> imageUrlList)? searchResultLoaded,
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
    required TResult Function(SearchIdleScreenLoaded value)
        searchIdleScreenLoaded,
    required TResult Function(SearchResultLoaded value) searchResultLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult? Function(SearchResultLoaded value)? searchResultLoaded,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult Function(SearchResultLoaded value)? searchResultLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchState {
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
    extends _$SearchStateCopyWithImpl<$Res, _$LoadInProgress>
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
    return 'SearchState.loadInProgress()';
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
    required TResult Function(List<String> imageUrlList, List<String> titleList)
        searchIdleScreenLoaded,
    required TResult Function(List<String> imageUrlList) searchResultLoaded,
    required TResult Function(String message) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult? Function(List<String> imageUrlList)? searchResultLoaded,
    TResult? Function(String message)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult Function(List<String> imageUrlList)? searchResultLoaded,
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
    required TResult Function(SearchIdleScreenLoaded value)
        searchIdleScreenLoaded,
    required TResult Function(SearchResultLoaded value) searchResultLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult? Function(SearchResultLoaded value)? searchResultLoaded,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult Function(SearchResultLoaded value)? searchResultLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements SearchState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class _$$SearchIdleScreenLoadedCopyWith<$Res> {
  factory _$$SearchIdleScreenLoadedCopyWith(_$SearchIdleScreenLoaded value,
          $Res Function(_$SearchIdleScreenLoaded) then) =
      __$$SearchIdleScreenLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> imageUrlList, List<String> titleList});
}

/// @nodoc
class __$$SearchIdleScreenLoadedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchIdleScreenLoaded>
    implements _$$SearchIdleScreenLoadedCopyWith<$Res> {
  __$$SearchIdleScreenLoadedCopyWithImpl(_$SearchIdleScreenLoaded _value,
      $Res Function(_$SearchIdleScreenLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrlList = null,
    Object? titleList = null,
  }) {
    return _then(_$SearchIdleScreenLoaded(
      imageUrlList: null == imageUrlList
          ? _value._imageUrlList
          : imageUrlList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      titleList: null == titleList
          ? _value._titleList
          : titleList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SearchIdleScreenLoaded implements SearchIdleScreenLoaded {
  const _$SearchIdleScreenLoaded(
      {required final List<String> imageUrlList,
      required final List<String> titleList})
      : _imageUrlList = imageUrlList,
        _titleList = titleList;

  final List<String> _imageUrlList;
  @override
  List<String> get imageUrlList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrlList);
  }

  final List<String> _titleList;
  @override
  List<String> get titleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titleList);
  }

  @override
  String toString() {
    return 'SearchState.searchIdleScreenLoaded(imageUrlList: $imageUrlList, titleList: $titleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchIdleScreenLoaded &&
            const DeepCollectionEquality()
                .equals(other._imageUrlList, _imageUrlList) &&
            const DeepCollectionEquality()
                .equals(other._titleList, _titleList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_imageUrlList),
      const DeepCollectionEquality().hash(_titleList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchIdleScreenLoadedCopyWith<_$SearchIdleScreenLoaded> get copyWith =>
      __$$SearchIdleScreenLoadedCopyWithImpl<_$SearchIdleScreenLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<String> imageUrlList, List<String> titleList)
        searchIdleScreenLoaded,
    required TResult Function(List<String> imageUrlList) searchResultLoaded,
    required TResult Function(String message) loadFailure,
  }) {
    return searchIdleScreenLoaded(imageUrlList, titleList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult? Function(List<String> imageUrlList)? searchResultLoaded,
    TResult? Function(String message)? loadFailure,
  }) {
    return searchIdleScreenLoaded?.call(imageUrlList, titleList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult Function(List<String> imageUrlList)? searchResultLoaded,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (searchIdleScreenLoaded != null) {
      return searchIdleScreenLoaded(imageUrlList, titleList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(SearchIdleScreenLoaded value)
        searchIdleScreenLoaded,
    required TResult Function(SearchResultLoaded value) searchResultLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return searchIdleScreenLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult? Function(SearchResultLoaded value)? searchResultLoaded,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return searchIdleScreenLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult Function(SearchResultLoaded value)? searchResultLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (searchIdleScreenLoaded != null) {
      return searchIdleScreenLoaded(this);
    }
    return orElse();
  }
}

abstract class SearchIdleScreenLoaded implements SearchState {
  const factory SearchIdleScreenLoaded(
      {required final List<String> imageUrlList,
      required final List<String> titleList}) = _$SearchIdleScreenLoaded;

  List<String> get imageUrlList;
  List<String> get titleList;
  @JsonKey(ignore: true)
  _$$SearchIdleScreenLoadedCopyWith<_$SearchIdleScreenLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchResultLoadedCopyWith<$Res> {
  factory _$$SearchResultLoadedCopyWith(_$SearchResultLoaded value,
          $Res Function(_$SearchResultLoaded) then) =
      __$$SearchResultLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> imageUrlList});
}

/// @nodoc
class __$$SearchResultLoadedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchResultLoaded>
    implements _$$SearchResultLoadedCopyWith<$Res> {
  __$$SearchResultLoadedCopyWithImpl(
      _$SearchResultLoaded _value, $Res Function(_$SearchResultLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrlList = null,
  }) {
    return _then(_$SearchResultLoaded(
      imageUrlList: null == imageUrlList
          ? _value._imageUrlList
          : imageUrlList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SearchResultLoaded implements SearchResultLoaded {
  const _$SearchResultLoaded({required final List<String> imageUrlList})
      : _imageUrlList = imageUrlList;

  final List<String> _imageUrlList;
  @override
  List<String> get imageUrlList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrlList);
  }

  @override
  String toString() {
    return 'SearchState.searchResultLoaded(imageUrlList: $imageUrlList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultLoaded &&
            const DeepCollectionEquality()
                .equals(other._imageUrlList, _imageUrlList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_imageUrlList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultLoadedCopyWith<_$SearchResultLoaded> get copyWith =>
      __$$SearchResultLoadedCopyWithImpl<_$SearchResultLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<String> imageUrlList, List<String> titleList)
        searchIdleScreenLoaded,
    required TResult Function(List<String> imageUrlList) searchResultLoaded,
    required TResult Function(String message) loadFailure,
  }) {
    return searchResultLoaded(imageUrlList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult? Function(List<String> imageUrlList)? searchResultLoaded,
    TResult? Function(String message)? loadFailure,
  }) {
    return searchResultLoaded?.call(imageUrlList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult Function(List<String> imageUrlList)? searchResultLoaded,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (searchResultLoaded != null) {
      return searchResultLoaded(imageUrlList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(SearchIdleScreenLoaded value)
        searchIdleScreenLoaded,
    required TResult Function(SearchResultLoaded value) searchResultLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return searchResultLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult? Function(SearchResultLoaded value)? searchResultLoaded,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return searchResultLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult Function(SearchResultLoaded value)? searchResultLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (searchResultLoaded != null) {
      return searchResultLoaded(this);
    }
    return orElse();
  }
}

abstract class SearchResultLoaded implements SearchState {
  const factory SearchResultLoaded({required final List<String> imageUrlList}) =
      _$SearchResultLoaded;

  List<String> get imageUrlList;
  @JsonKey(ignore: true)
  _$$SearchResultLoadedCopyWith<_$SearchResultLoaded> get copyWith =>
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
    extends _$SearchStateCopyWithImpl<$Res, _$LoadFailure>
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
    return 'SearchState.loadFailure(message: $message)';
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
    required TResult Function(List<String> imageUrlList, List<String> titleList)
        searchIdleScreenLoaded,
    required TResult Function(List<String> imageUrlList) searchResultLoaded,
    required TResult Function(String message) loadFailure,
  }) {
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult? Function(List<String> imageUrlList)? searchResultLoaded,
    TResult? Function(String message)? loadFailure,
  }) {
    return loadFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<String> imageUrlList, List<String> titleList)?
        searchIdleScreenLoaded,
    TResult Function(List<String> imageUrlList)? searchResultLoaded,
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
    required TResult Function(SearchIdleScreenLoaded value)
        searchIdleScreenLoaded,
    required TResult Function(SearchResultLoaded value) searchResultLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult? Function(SearchResultLoaded value)? searchResultLoaded,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(SearchIdleScreenLoaded value)? searchIdleScreenLoaded,
    TResult Function(SearchResultLoaded value)? searchResultLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements SearchState {
  const factory LoadFailure({required final String message}) = _$LoadFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadFailureCopyWith<_$LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
