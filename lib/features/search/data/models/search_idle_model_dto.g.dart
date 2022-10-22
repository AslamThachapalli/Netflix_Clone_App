// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_idle_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchIdleModelDto _$$_SearchIdleModelDtoFromJson(
        Map<String, dynamic> json) =>
    _$_SearchIdleModelDto(
      resultsList: (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_SearchIdleModelDtoToJson(
        _$_SearchIdleModelDto instance) =>
    <String, dynamic>{
      'results': instance.resultsList,
    };
