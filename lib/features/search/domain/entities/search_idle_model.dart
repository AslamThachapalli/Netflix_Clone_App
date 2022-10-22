import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_idle_model.freezed.dart';

@freezed
class SearchIdleModel with _$SearchIdleModel {
  const factory SearchIdleModel({
    required List<String> imageList,
    required List<String> titleList,
  }) = _SearchIdleModel;
}
