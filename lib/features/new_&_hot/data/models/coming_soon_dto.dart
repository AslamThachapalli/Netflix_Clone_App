import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/coming_soon.dart';

part 'coming_soon_dto.freezed.dart';
part 'coming_soon_dto.g.dart';

@freezed
class ComingSoonDto with _$ComingSoonDto {
  const ComingSoonDto._();

  const factory ComingSoonDto({
    @JsonKey(name: 'results') required List<Map<String, dynamic>> resultsList,
  }) = _ComingSoonDto;

  ComingSoon toDomain() {
    return ComingSoon(
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
      releaseDate: resultsList.map((map) {
        String releaseDate;
        if (map['first_air_date'] != null) {
          releaseDate = map['first_air_date'];
        } else {
          releaseDate = '';
        }
        return releaseDate;
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

  factory ComingSoonDto.fromJson(Map<String, dynamic> json) => _$ComingSoonDtoFromJson(json);
}
