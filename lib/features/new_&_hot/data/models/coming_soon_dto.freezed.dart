// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coming_soon_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComingSoonDto _$ComingSoonDtoFromJson(Map<String, dynamic> json) {
  return _ComingSoonDto.fromJson(json);
}

/// @nodoc
mixin _$ComingSoonDto {
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComingSoonDtoCopyWith<ComingSoonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComingSoonDtoCopyWith<$Res> {
  factory $ComingSoonDtoCopyWith(
          ComingSoonDto value, $Res Function(ComingSoonDto) then) =
      _$ComingSoonDtoCopyWithImpl<$Res, ComingSoonDto>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class _$ComingSoonDtoCopyWithImpl<$Res, $Val extends ComingSoonDto>
    implements $ComingSoonDtoCopyWith<$Res> {
  _$ComingSoonDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_ComingSoonDtoCopyWith<$Res>
    implements $ComingSoonDtoCopyWith<$Res> {
  factory _$$_ComingSoonDtoCopyWith(
          _$_ComingSoonDto value, $Res Function(_$_ComingSoonDto) then) =
      __$$_ComingSoonDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<Map<String, dynamic>> resultsList});
}

/// @nodoc
class __$$_ComingSoonDtoCopyWithImpl<$Res>
    extends _$ComingSoonDtoCopyWithImpl<$Res, _$_ComingSoonDto>
    implements _$$_ComingSoonDtoCopyWith<$Res> {
  __$$_ComingSoonDtoCopyWithImpl(
      _$_ComingSoonDto _value, $Res Function(_$_ComingSoonDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultsList = null,
  }) {
    return _then(_$_ComingSoonDto(
      resultsList: null == resultsList
          ? _value._resultsList
          : resultsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComingSoonDto extends _ComingSoonDto {
  const _$_ComingSoonDto(
      {@JsonKey(name: 'results')
          required final List<Map<String, dynamic>> resultsList})
      : _resultsList = resultsList,
        super._();

  factory _$_ComingSoonDto.fromJson(Map<String, dynamic> json) =>
      _$$_ComingSoonDtoFromJson(json);

  final List<Map<String, dynamic>> _resultsList;
  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultsList);
  }

  @override
  String toString() {
    return 'ComingSoonDto(resultsList: $resultsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComingSoonDto &&
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
  _$$_ComingSoonDtoCopyWith<_$_ComingSoonDto> get copyWith =>
      __$$_ComingSoonDtoCopyWithImpl<_$_ComingSoonDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComingSoonDtoToJson(
      this,
    );
  }
}

abstract class _ComingSoonDto extends ComingSoonDto {
  const factory _ComingSoonDto(
          {@JsonKey(name: 'results')
              required final List<Map<String, dynamic>> resultsList}) =
      _$_ComingSoonDto;
  const _ComingSoonDto._() : super._();

  factory _ComingSoonDto.fromJson(Map<String, dynamic> json) =
      _$_ComingSoonDto.fromJson;

  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get resultsList;
  @override
  @JsonKey(ignore: true)
  _$$_ComingSoonDtoCopyWith<_$_ComingSoonDto> get copyWith =>
      throw _privateConstructorUsedError;
}
