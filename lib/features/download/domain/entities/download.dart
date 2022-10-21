import 'package:freezed_annotation/freezed_annotation.dart';

part 'download.freezed.dart';

@freezed
class Download with _$Download {
  const factory Download({required List<String> imageUrlList}) = _Download;
}
