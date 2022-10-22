import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../core/urls/apis.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/search_idle_model_dto.dart';

@LazySingleton()
class GetTopSearchData {
  final http.Client _client;
  GetTopSearchData(this._client);

  Future<SearchIdleModelDto> getData() async {
    final response = await _client.get(Uri.parse(Apis.searchIdleScreenDataApi));
    if (response.statusCode == 200) {
      return SearchIdleModelDto.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
