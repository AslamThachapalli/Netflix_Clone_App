import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';

@freezed
class Home with _$Home {
  const factory Home({
    required List<String> imageUrlList,
  }) = _Home;
}
