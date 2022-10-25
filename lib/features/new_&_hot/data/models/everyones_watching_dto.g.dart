// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everyones_watching_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EveryOnesWatchingDto _$$_EveryOnesWatchingDtoFromJson(
        Map<String, dynamic> json) =>
    _$_EveryOnesWatchingDto(
      resultsList: (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_EveryOnesWatchingDtoToJson(
        _$_EveryOnesWatchingDto instance) =>
    <String, dynamic>{
      'results': instance.resultsList,
    };
