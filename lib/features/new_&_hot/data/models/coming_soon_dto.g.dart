// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coming_soon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComingSoonDto _$$_ComingSoonDtoFromJson(Map<String, dynamic> json) =>
    _$_ComingSoonDto(
      resultsList: (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_ComingSoonDtoToJson(_$_ComingSoonDto instance) =>
    <String, dynamic>{
      'results': instance.resultsList,
    };
