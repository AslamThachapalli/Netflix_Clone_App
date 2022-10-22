// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_active_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchActiveModel {
  List<String> get imageList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchActiveModelCopyWith<SearchActiveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchActiveModelCopyWith<$Res> {
  factory $SearchActiveModelCopyWith(
          SearchActiveModel value, $Res Function(SearchActiveModel) then) =
      _$SearchActiveModelCopyWithImpl<$Res, SearchActiveModel>;
  @useResult
  $Res call({List<String> imageList});
}

/// @nodoc
class _$SearchActiveModelCopyWithImpl<$Res, $Val extends SearchActiveModel>
    implements $SearchActiveModelCopyWith<$Res> {
  _$SearchActiveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageList = null,
  }) {
    return _then(_value.copyWith(
      imageList: null == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchActiveModelCopyWith<$Res>
    implements $SearchActiveModelCopyWith<$Res> {
  factory _$$_SearchActiveModelCopyWith(_$_SearchActiveModel value,
          $Res Function(_$_SearchActiveModel) then) =
      __$$_SearchActiveModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> imageList});
}

/// @nodoc
class __$$_SearchActiveModelCopyWithImpl<$Res>
    extends _$SearchActiveModelCopyWithImpl<$Res, _$_SearchActiveModel>
    implements _$$_SearchActiveModelCopyWith<$Res> {
  __$$_SearchActiveModelCopyWithImpl(
      _$_SearchActiveModel _value, $Res Function(_$_SearchActiveModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageList = null,
  }) {
    return _then(_$_SearchActiveModel(
      imageList: null == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SearchActiveModel implements _SearchActiveModel {
  const _$_SearchActiveModel({required final List<String> imageList})
      : _imageList = imageList;

  final List<String> _imageList;
  @override
  List<String> get imageList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageList);
  }

  @override
  String toString() {
    return 'SearchActiveModel(imageList: $imageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchActiveModel &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_imageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchActiveModelCopyWith<_$_SearchActiveModel> get copyWith =>
      __$$_SearchActiveModelCopyWithImpl<_$_SearchActiveModel>(
          this, _$identity);
}

abstract class _SearchActiveModel implements SearchActiveModel {
  const factory _SearchActiveModel({required final List<String> imageList}) =
      _$_SearchActiveModel;

  @override
  List<String> get imageList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchActiveModelCopyWith<_$_SearchActiveModel> get copyWith =>
      throw _privateConstructorUsedError;
}
