import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_active_model.freezed.dart';

@freezed
class SearchActiveModel with _$SearchActiveModel {
  const factory SearchActiveModel({
    required List<String> imageList,
  }) = _SearchActiveModel;
}
