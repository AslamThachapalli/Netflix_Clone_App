// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDto _$$_HomeDtoFromJson(Map<String, dynamic> json) => _$_HomeDto(
      resultsList: (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_HomeDtoToJson(_$_HomeDto instance) =>
    <String, dynamic>{
      'results': instance.resultsList,
    };
