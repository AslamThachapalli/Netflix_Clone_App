import 'package:freezed_annotation/freezed_annotation.dart';

part 'everyones_watching.freezed.dart';

@freezed
class EveryOnesWatching with _$EveryOnesWatching {
  const factory EveryOnesWatching({
    required List<String> title,
    required List<String> overview,
    required List<String> imageUrl,
  }) = _EveryOnesWatching;
}
