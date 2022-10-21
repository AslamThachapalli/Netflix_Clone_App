import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/download.dart';

part 'download_dto.freezed.dart';
part 'download_dto.g.dart';

@freezed
class DownloadDto with _$DownloadDto {
  const DownloadDto._();

  const factory DownloadDto({
    @JsonKey(name: 'results') required List<Map<String, dynamic>> resultsList,
  }) = _DownloadDto;

  Download toDomain() {
    return Download(
        imageUrlList: resultsList.map((map) {
      String imageUrl = map['poster_path'];
      return imageUrl;
    }).toList());
  }

  factory DownloadDto.fromJson(Map<String, dynamic> json) => _$DownloadDtoFromJson(json);
}
