import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/everyones_watching.dart';

part 'everyones_watching_dto.freezed.dart';
part 'everyones_watching_dto.g.dart';

@freezed
class EveryOnesWatchingDto with _$EveryOnesWatchingDto {
  const EveryOnesWatchingDto._();

  const factory EveryOnesWatchingDto({
    @JsonKey(name: 'results') required List<Map<String, dynamic>> resultsList,
  }) = _EveryOnesWatchingDto;

  EveryOnesWatching toDomain() {
    return EveryOnesWatching(
      title: resultsList.map((map) {
        String title;
        if (map['name'] != null) {
          title = map['name'];
        } else if (map['original_name'] != null) {
          title = map['original_name'];
        } else if (map['title'] != null) {
          title = map['title'];
        } else {
          title = '';
        }
        return title;
      }).toList(),
      imageUrl: resultsList.map((map) {
        String imageUrl;
        if (map['backdrop_path'] != null) {
          imageUrl = map['backdrop_path'];
        } else if (map['poster_path'] != null) {
          imageUrl = map['poster_path'];
        } else {
          imageUrl = '';
        }
        return imageUrl;
      }).toList(),
      overview: resultsList.map((map) {
        String overview;
        if (map['overview'] != null) {
          overview = map['overview'];
        } else {
          overview = '';
        }
        return overview;
      }).toList(),
    );
  }

  factory EveryOnesWatchingDto.fromJson(Map<String, dynamic> json) =>
      _$EveryOnesWatchingDtoFromJson(json);
}
