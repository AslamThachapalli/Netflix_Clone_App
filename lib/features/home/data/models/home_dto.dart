import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/features/home/domain/entities/home.dart';

part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
class HomeDto with _$HomeDto {
  const HomeDto._();

  const factory HomeDto({
    @JsonKey(name: 'results') required List<Map<String, dynamic>> resultsList,
  }) = _HomeDto;

  Home toDomain() {
    return Home(
      imageUrlList: resultsList.map((map) {
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
    );
  }

  factory HomeDto.fromJson(Map<String, dynamic> json) => _$HomeDtoFromJson(json);
}
