// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DownloadDto _$$_DownloadDtoFromJson(Map<String, dynamic> json) =>
    _$_DownloadDto(
      resultsList: (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_DownloadDtoToJson(_$_DownloadDto instance) =>
    <String, dynamic>{
      'results': instance.resultsList,
    };
