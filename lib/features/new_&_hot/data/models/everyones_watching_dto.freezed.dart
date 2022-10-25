// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'everyones_watching_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EveryOnesWatchingDto _$EveryOnesWatchingDtoFromJson(Map<String, dynamic> json) {
  return _EveryOnesWatchingDto.fromJson(json);
}

/// @nodoc
mixin _$EveryOnesWatchingDto {
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EveryOnesWatchingDtoCopyWith<EveryOnesWatchingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveryOnesWatchingDtoCopyWith<$Res> {
  factory $EveryOnesWatchingDtoCopyWith(EveryOnesWatchingDto value,
          $Res Function(EveryOnesWatchingDto) then) =
      _$EveryOnesWatchingDtoCopyWithImpl<$Res, EveryOnesWatchingDto>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class _$EveryOnesWatchingDtoCopyWithImpl<$Res,
        $Val extends EveryOnesWatchingDto>
    implements $EveryOnesWatchingDtoCopyWith<$Res> {
  _$EveryOnesWatchingDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_EveryOnesWatchingDtoCopyWith<$Res>
    implements $EveryOnesWatchingDtoCopyWith<$Res> {
  factory _$$_EveryOnesWatchingDtoCopyWith(_$_EveryOnesWatchingDto value,
          $Res Function(_$_EveryOnesWatchingDto) then) =
      __$$_EveryOnesWatchingDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class __$$_EveryOnesWatchingDtoCopyWithImpl<$Res>
    extends _$EveryOnesWatchingDtoCopyWithImpl<$Res, _$_EveryOnesWatchingDto>
    implements _$$_EveryOnesWatchingDtoCopyWith<$Res> {
  __$$_EveryOnesWatchingDtoCopyWithImpl(_$_EveryOnesWatchingDto _value,
      $Res Function(_$_EveryOnesWatchingDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultsList = null,
  }) {
    return _then(_$_EveryOnesWatchingDto(
      resultsList: null == resultsList
          ? _value._resultsList
          : resultsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EveryOnesWatchingDto extends _EveryOnesWatchingDto {
  const _$_EveryOnesWatchingDto(
      {@JsonKey(name: 'results')
          required final List<Map<String, dynamic>> resultsList})
      : _resultsList = resultsList,
        super._();

  factory _$_EveryOnesWatchingDto.fromJson(Map<String, dynamic> json) =>
      _$$_EveryOnesWatchingDtoFromJson(json);

  final List<Map<String, dynamic>> _resultsList;
  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultsList);
  }

  @override
  String toString() {
    return 'EveryOnesWatchingDto(resultsList: $resultsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EveryOnesWatchingDto &&
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
  _$$_EveryOnesWatchingDtoCopyWith<_$_EveryOnesWatchingDto> get copyWith =>
      __$$_EveryOnesWatchingDtoCopyWithImpl<_$_EveryOnesWatchingDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EveryOnesWatchingDtoToJson(
      this,
    );
  }
}

abstract class _EveryOnesWatchingDto extends EveryOnesWatchingDto {
  const factory _EveryOnesWatchingDto(
          {@JsonKey(name: 'results')
              required final List<Map<String, dynamic>> resultsList}) =
      _$_EveryOnesWatchingDto;
  const _EveryOnesWatchingDto._() : super._();

  factory _EveryOnesWatchingDto.fromJson(Map<String, dynamic> json) =
      _$_EveryOnesWatchingDto.fromJson;

  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList;
  @override
  @JsonKey(ignore: true)
  _$$_EveryOnesWatchingDtoCopyWith<_$_EveryOnesWatchingDto> get copyWith =>
      throw _privateConstructorUsedError;
}
