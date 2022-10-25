// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'everyones_watching.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EveryOnesWatching {
  List<String> get title => throw _privateConstructorUsedError;
  List<String> get overview => throw _privateConstructorUsedError;
  List<String> get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EveryOnesWatchingCopyWith<EveryOnesWatching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveryOnesWatchingCopyWith<$Res> {
  factory $EveryOnesWatchingCopyWith(
          EveryOnesWatching value, $Res Function(EveryOnesWatching) then) =
      _$EveryOnesWatchingCopyWithImpl<$Res, EveryOnesWatching>;
  @useResult
  $Res call({List<String> title, List<String> overview, List<String> imageUrl});
}

/// @nodoc
class _$EveryOnesWatchingCopyWithImpl<$Res, $Val extends EveryOnesWatching>
    implements $EveryOnesWatchingCopyWith<$Res> {
  _$EveryOnesWatchingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as List<String>,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EveryOnesWatchingCopyWith<$Res>
    implements $EveryOnesWatchingCopyWith<$Res> {
  factory _$$_EveryOnesWatchingCopyWith(_$_EveryOnesWatching value,
          $Res Function(_$_EveryOnesWatching) then) =
      __$$_EveryOnesWatchingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> title, List<String> overview, List<String> imageUrl});
}

/// @nodoc
class __$$_EveryOnesWatchingCopyWithImpl<$Res>
    extends _$EveryOnesWatchingCopyWithImpl<$Res, _$_EveryOnesWatching>
    implements _$$_EveryOnesWatchingCopyWith<$Res> {
  __$$_EveryOnesWatchingCopyWithImpl(
      _$_EveryOnesWatching _value, $Res Function(_$_EveryOnesWatching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_EveryOnesWatching(
      title: null == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<String>,
      overview: null == overview
          ? _value._overview
          : overview // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrl: null == imageUrl
          ? _value._imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_EveryOnesWatching implements _EveryOnesWatching {
  const _$_EveryOnesWatching(
      {required final List<String> title,
      required final List<String> overview,
      required final List<String> imageUrl})
      : _title = title,
        _overview = overview,
        _imageUrl = imageUrl;

  final List<String> _title;
  @override
  List<String> get title {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_title);
  }

  final List<String> _overview;
  @override
  List<String> get overview {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_overview);
  }

  final List<String> _imageUrl;
  @override
  List<String> get imageUrl {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrl);
  }

  @override
  String toString() {
    return 'EveryOnesWatching(title: $title, overview: $overview, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EveryOnesWatching &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            const DeepCollectionEquality().equals(other._overview, _overview) &&
            const DeepCollectionEquality().equals(other._imageUrl, _imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_title),
      const DeepCollectionEquality().hash(_overview),
      const DeepCollectionEquality().hash(_imageUrl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EveryOnesWatchingCopyWith<_$_EveryOnesWatching> get copyWith =>
      __$$_EveryOnesWatchingCopyWithImpl<_$_EveryOnesWatching>(
          this, _$identity);
}

abstract class _EveryOnesWatching implements EveryOnesWatching {
  const factory _EveryOnesWatching(
      {required final List<String> title,
      required final List<String> overview,
      required final List<String> imageUrl}) = _$_EveryOnesWatching;

  @override
  List<String> get title;
  @override
  List<String> get overview;
  @override
  List<String> get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_EveryOnesWatchingCopyWith<_$_EveryOnesWatching> get copyWith =>
      throw _privateConstructorUsedError;
}
