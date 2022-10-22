// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_idle_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchIdleModelDto _$SearchIdleModelDtoFromJson(Map<String, dynamic> json) {
  return _SearchIdleModelDto.fromJson(json);
}

/// @nodoc
mixin _$SearchIdleModelDto {
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchIdleModelDtoCopyWith<SearchIdleModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchIdleModelDtoCopyWith<$Res> {
  factory $SearchIdleModelDtoCopyWith(
          SearchIdleModelDto value, $Res Function(SearchIdleModelDto) then) =
      _$SearchIdleModelDtoCopyWithImpl<$Res, SearchIdleModelDto>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class _$SearchIdleModelDtoCopyWithImpl<$Res, $Val extends SearchIdleModelDto>
    implements $SearchIdleModelDtoCopyWith<$Res> {
  _$SearchIdleModelDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_SearchIdleModelDtoCopyWith<$Res>
    implements $SearchIdleModelDtoCopyWith<$Res> {
  factory _$$_SearchIdleModelDtoCopyWith(_$_SearchIdleModelDto value,
          $Res Function(_$_SearchIdleModelDto) then) =
      __$$_SearchIdleModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class __$$_SearchIdleModelDtoCopyWithImpl<$Res>
    extends _$SearchIdleModelDtoCopyWithImpl<$Res, _$_SearchIdleModelDto>
    implements _$$_SearchIdleModelDtoCopyWith<$Res> {
  __$$_SearchIdleModelDtoCopyWithImpl(
      _$_SearchIdleModelDto _value, $Res Function(_$_SearchIdleModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultsList = null,
  }) {
    return _then(_$_SearchIdleModelDto(
      resultsList: null == resultsList
          ? _value._resultsList
          : resultsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchIdleModelDto extends _SearchIdleModelDto {
  const _$_SearchIdleModelDto(
      {@JsonKey(name: 'results')
          required final List<Map<String, dynamic>> resultsList})
      : _resultsList = resultsList,
        super._();

  factory _$_SearchIdleModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchIdleModelDtoFromJson(json);

  final List<Map<String, dynamic>> _resultsList;
  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultsList);
  }

  @override
  String toString() {
    return 'SearchIdleModelDto(resultsList: $resultsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchIdleModelDto &&
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
  _$$_SearchIdleModelDtoCopyWith<_$_SearchIdleModelDto> get copyWith =>
      __$$_SearchIdleModelDtoCopyWithImpl<_$_SearchIdleModelDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchIdleModelDtoToJson(
      this,
    );
  }
}

abstract class _SearchIdleModelDto extends SearchIdleModelDto {
  const factory _SearchIdleModelDto(
          {@JsonKey(name: 'results')
              required final List<Map<String, dynamic>> resultsList}) =
      _$_SearchIdleModelDto;
  const _SearchIdleModelDto._() : super._();

  factory _SearchIdleModelDto.fromJson(Map<String, dynamic> json) =
      _$_SearchIdleModelDto.fromJson;

  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchIdleModelDtoCopyWith<_$_SearchIdleModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
