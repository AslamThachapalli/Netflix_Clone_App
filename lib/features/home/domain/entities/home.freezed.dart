// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Home {
  List<String> get imageUrlList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res, Home>;
  @useResult
  $Res call({List<String> imageUrlList});
}

/// @nodoc
class _$HomeCopyWithImpl<$Res, $Val extends Home>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrlList = null,
  }) {
    return _then(_value.copyWith(
      imageUrlList: null == imageUrlList
          ? _value.imageUrlList
          : imageUrlList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$_HomeCopyWith(_$_Home value, $Res Function(_$_Home) then) =
      __$$_HomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> imageUrlList});
}

/// @nodoc
class __$$_HomeCopyWithImpl<$Res> extends _$HomeCopyWithImpl<$Res, _$_Home>
    implements _$$_HomeCopyWith<$Res> {
  __$$_HomeCopyWithImpl(_$_Home _value, $Res Function(_$_Home) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrlList = null,
  }) {
    return _then(_$_Home(
      imageUrlList: null == imageUrlList
          ? _value._imageUrlList
          : imageUrlList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Home implements _Home {
  const _$_Home({required final List<String> imageUrlList})
      : _imageUrlList = imageUrlList;

  final List<String> _imageUrlList;
  @override
  List<String> get imageUrlList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrlList);
  }

  @override
  String toString() {
    return 'Home(imageUrlList: $imageUrlList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Home &&
            const DeepCollectionEquality()
                .equals(other._imageUrlList, _imageUrlList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_imageUrlList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeCopyWith<_$_Home> get copyWith =>
      __$$_HomeCopyWithImpl<_$_Home>(this, _$identity);
}

abstract class _Home implements Home {
  const factory _Home({required final List<String> imageUrlList}) = _$_Home;

  @override
  List<String> get imageUrlList;
  @override
  @JsonKey(ignore: true)
  _$$_HomeCopyWith<_$_Home> get copyWith => throw _privateConstructorUsedError;
}
