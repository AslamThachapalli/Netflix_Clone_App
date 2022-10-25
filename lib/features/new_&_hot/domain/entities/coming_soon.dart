import 'package:freezed_annotation/freezed_annotation.dart';

part 'coming_soon.freezed.dart';

@freezed
class ComingSoon with _$ComingSoon {
  const factory ComingSoon({
    required List<String> title,
    required List<String> imageUrl,
    required List<String> releaseDate,
    required List<String> overview,
  }) = _ComingSoon;
}
