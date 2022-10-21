// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadDto _$DownloadDtoFromJson(Map<String, dynamic> json) {
  return _DownloadDto.fromJson(json);
}

/// @nodoc
mixin _$DownloadDto {
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadDtoCopyWith<DownloadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadDtoCopyWith<$Res> {
  factory $DownloadDtoCopyWith(
          DownloadDto value, $Res Function(DownloadDto) then) =
      _$DownloadDtoCopyWithImpl<$Res, DownloadDto>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class _$DownloadDtoCopyWithImpl<$Res, $Val extends DownloadDto>
    implements $DownloadDtoCopyWith<$Res> {
  _$DownloadDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_DownloadDtoCopyWith<$Res>
    implements $DownloadDtoCopyWith<$Res> {
  factory _$$_DownloadDtoCopyWith(
          _$_DownloadDto value, $Res Function(_$_DownloadDto) then) =
      __$$_DownloadDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class __$$_DownloadDtoCopyWithImpl<$Res>
    extends _$DownloadDtoCopyWithImpl<$Res, _$_DownloadDto>
    implements _$$_DownloadDtoCopyWith<$Res> {
  __$$_DownloadDtoCopyWithImpl(
      _$_DownloadDto _value, $Res Function(_$_DownloadDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultsList = null,
  }) {
    return _then(_$_DownloadDto(
      resultsList: null == resultsList
          ? _value._resultsList
          : resultsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadDto extends _DownloadDto {
  const _$_DownloadDto(
      {@JsonKey(name: 'results')
          required final List<Map<String, dynamic>> resultsList})
      : _resultsList = resultsList,
        super._();

  factory _$_DownloadDto.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadDtoFromJson(json);

  final List<Map<String, dynamic>> _resultsList;
  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultsList);
  }

  @override
  String toString() {
    return 'DownloadDto(resultsList: $resultsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadDto &&
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
  _$$_DownloadDtoCopyWith<_$_DownloadDto> get copyWith =>
      __$$_DownloadDtoCopyWithImpl<_$_DownloadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadDtoToJson(
      this,
    );
  }
}

abstract class _DownloadDto extends DownloadDto {
  const factory _DownloadDto(
          {@JsonKey(name: 'results')
              required final List<Map<String, dynamic>> resultsList}) =
      _$_DownloadDto;
  const _DownloadDto._() : super._();

  factory _DownloadDto.fromJson(Map<String, dynamic> json) =
      _$_DownloadDto.fromJson;

  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadDtoCopyWith<_$_DownloadDto> get copyWith =>
      throw _privateConstructorUsedError;
}
