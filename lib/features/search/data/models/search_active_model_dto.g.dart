// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_active_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchActiveModelDto _$$_SearchActiveModelDtoFromJson(
        Map<String, dynamic> json) =>
    _$_SearchActiveModelDto(
      resultsList: (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_SearchActiveModelDtoToJson(
        _$_SearchActiveModelDto instance) =>
    <String, dynamic>{
      'results': instance.resultsList,
    };
