import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/search_idle_model.dart';

part 'search_idle_model_dto.freezed.dart';
part 'search_idle_model_dto.g.dart';

@freezed
class SearchIdleModelDto with _$SearchIdleModelDto {
  const SearchIdleModelDto._();

  const factory SearchIdleModelDto({
    @JsonKey(name: 'results') required List<Map<String, dynamic>> resultsList,
  }) = _SearchIdleModelDto;

  SearchIdleModel toDomain() {
    return SearchIdleModel(
      imageList: resultsList.map((map) {
        String imageUrl;
        if (map['poster_path'] != null) {
          imageUrl = map['poster_path'];
        } else if (map['backdrop_path'] != null) {
          imageUrl = map['backdrop_path'];
        } else {
          imageUrl = '';
        }
        return imageUrl;
      }).toList(),
      titleList: resultsList.map((map) {
        String title;
        if (map['title'] != null) {
          title = map['title'];
        } else if (map['original_title'] != null) {
          title = map['original_title'];
        } else {
          title = map['original_name'];
        }
        return title;
      }).toList(),
    );
  }

  factory SearchIdleModelDto.fromJson(Map<String, dynamic> json) =>
      _$SearchIdleModelDtoFromJson(json);
}
