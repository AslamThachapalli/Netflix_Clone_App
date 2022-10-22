// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_idle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchIdleModel {
  List<String> get imageList => throw _privateConstructorUsedError;
  List<String> get titleList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchIdleModelCopyWith<SearchIdleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchIdleModelCopyWith<$Res> {
  factory $SearchIdleModelCopyWith(
          SearchIdleModel value, $Res Function(SearchIdleModel) then) =
      _$SearchIdleModelCopyWithImpl<$Res, SearchIdleModel>;
  @useResult
  $Res call({List<String> imageList, List<String> titleList});
}

/// @nodoc
class _$SearchIdleModelCopyWithImpl<$Res, $Val extends SearchIdleModel>
    implements $SearchIdleModelCopyWith<$Res> {
  _$SearchIdleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageList = null,
    Object? titleList = null,
  }) {
    return _then(_value.copyWith(
      imageList: null == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      titleList: null == titleList
          ? _value.titleList
          : titleList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchIdleModelCopyWith<$Res>
    implements $SearchIdleModelCopyWith<$Res> {
  factory _$$_SearchIdleModelCopyWith(
          _$_SearchIdleModel value, $Res Function(_$_SearchIdleModel) then) =
      __$$_SearchIdleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> imageList, List<String> titleList});
}

/// @nodoc
class __$$_SearchIdleModelCopyWithImpl<$Res>
    extends _$SearchIdleModelCopyWithImpl<$Res, _$_SearchIdleModel>
    implements _$$_SearchIdleModelCopyWith<$Res> {
  __$$_SearchIdleModelCopyWithImpl(
      _$_SearchIdleModel _value, $Res Function(_$_SearchIdleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageList = null,
    Object? titleList = null,
  }) {
    return _then(_$_SearchIdleModel(
      imageList: null == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      titleList: null == titleList
          ? _value._titleList
          : titleList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SearchIdleModel implements _SearchIdleModel {
  const _$_SearchIdleModel(
      {required final List<String> imageList,
      required final List<String> titleList})
      : _imageList = imageList,
        _titleList = titleList;

  final List<String> _imageList;
  @override
  List<String> get imageList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageList);
  }

  final List<String> _titleList;
  @override
  List<String> get titleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titleList);
  }

  @override
  String toString() {
    return 'SearchIdleModel(imageList: $imageList, titleList: $titleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchIdleModel &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList) &&
            const DeepCollectionEquality()
                .equals(other._titleList, _titleList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_imageList),
      const DeepCollectionEquality().hash(_titleList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchIdleModelCopyWith<_$_SearchIdleModel> get copyWith =>
      __$$_SearchIdleModelCopyWithImpl<_$_SearchIdleModel>(this, _$identity);
}

abstract class _SearchIdleModel implements SearchIdleModel {
  const factory _SearchIdleModel(
      {required final List<String> imageList,
      required final List<String> titleList}) = _$_SearchIdleModel;

  @override
  List<String> get imageList;
  @override
  List<String> get titleList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchIdleModelCopyWith<_$_SearchIdleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
