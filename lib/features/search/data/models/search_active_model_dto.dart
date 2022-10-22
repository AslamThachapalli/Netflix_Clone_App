import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/search_active_model.dart';

part 'search_active_model_dto.freezed.dart';
part 'search_active_model_dto.g.dart';

@freezed
class SearchActiveModelDto with _$SearchActiveModelDto {
  const SearchActiveModelDto._();

  const factory SearchActiveModelDto({
    @JsonKey(name: 'results') required List<Map<String, dynamic>> resultsList,
  }) = _SearchActiveModelDto;

  SearchActiveModel toDomain() {
    return SearchActiveModel(
        imageList: resultsList.map((map) {
      String imageUrl = map['poster_path'];
      return imageUrl;
    }).toList());
  }

  factory SearchActiveModelDto.fromJson(Map<String, dynamic> json) =>
      _$SearchActiveModelDtoFromJson(json);
}
