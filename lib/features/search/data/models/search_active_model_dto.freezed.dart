// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_active_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchActiveModelDto _$SearchActiveModelDtoFromJson(Map<String, dynamic> json) {
  return _SearchActiveModelDto.fromJson(json);
}

/// @nodoc
mixin _$SearchActiveModelDto {
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchActiveModelDtoCopyWith<SearchActiveModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchActiveModelDtoCopyWith<$Res> {
  factory $SearchActiveModelDtoCopyWith(SearchActiveModelDto value,
          $Res Function(SearchActiveModelDto) then) =
      _$SearchActiveModelDtoCopyWithImpl<$Res, SearchActiveModelDto>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class _$SearchActiveModelDtoCopyWithImpl<$Res,
        $Val extends SearchActiveModelDto>
    implements $SearchActiveModelDtoCopyWith<$Res> {
  _$SearchActiveModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultsList = null,
  }) {
    return _then(_value.copyWith(
      resultsList: null == resultsList
          ? _value.resultsList
          : resultsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchActiveModelDtoCopyWith<$Res>
    implements $SearchActiveModelDtoCopyWith<$Res> {
  factory _$$_SearchActiveModelDtoCopyWith(_$_SearchActiveModelDto value,
          $Res Function(_$_SearchActiveModelDto) then) =
      __$$_SearchActiveModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class __$$_SearchActiveModelDtoCopyWithImpl<$Res>
    extends _$SearchActiveModelDtoCopyWithImpl<$Res, _$_SearchActiveModelDto>
    implements _$$_SearchActiveModelDtoCopyWith<$Res> {
  __$$_SearchActiveModelDtoCopyWithImpl(_$_SearchActiveModelDto _value,
      $Res Function(_$_SearchActiveModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultsList = null,
  }) {
    return _then(_$_SearchActiveModelDto(
      resultsList: null == resultsList
          ? _value._resultsList
          : resultsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchActiveModelDto extends _SearchActiveModelDto {
  const _$_SearchActiveModelDto(
      {@JsonKey(name: 'results')
          required final List<Map<String, dynamic>> resultsList})
      : _resultsList = resultsList,
        super._();

  factory _$_SearchActiveModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchActiveModelDtoFromJson(json);

  final List<Map<String, dynamic>> _resultsList;
  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultsList);
  }

  @override
  String toString() {
    return 'SearchActiveModelDto(resultsList: $resultsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchActiveModelDto &&
            const DeepCollectionEquality()
                .equals(other._resultsList, _resultsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_resultsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchActiveModelDtoCopyWith<_$_SearchActiveModelDto> get copyWith =>
      __$$_SearchActiveModelDtoCopyWithImpl<_$_SearchActiveModelDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchActiveModelDtoToJson(
      this,
    );
  }
}

abstract class _SearchActiveModelDto extends SearchActiveModelDto {
  const factory _SearchActiveModelDto(
          {@JsonKey(name: 'results')
              required final List<Map<String, dynamic>> resultsList}) =
      _$_SearchActiveModelDto;
  const _SearchActiveModelDto._() : super._();

  factory _SearchActiveModelDto.fromJson(Map<String, dynamic> json) =
      _$_SearchActiveModelDto.fromJson;

  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchActiveModelDtoCopyWith<_$_SearchActiveModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
