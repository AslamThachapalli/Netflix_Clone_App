import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/urls/apis.dart';
import '../models/search_active_model_dto.dart';

@LazySingleton()
class SearchTheQuery {
  final http.Client _client;
  SearchTheQuery(this._client);

  Future<SearchActiveModelDto> getSearchData(String query) async {
    final response = await _client.get(
      Uri.parse('${Apis.searchActiveApiPart1}$query${Apis.searchActiveApiPart2}'),
    );
    if (response.statusCode == 200) {
      return SearchActiveModelDto.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
