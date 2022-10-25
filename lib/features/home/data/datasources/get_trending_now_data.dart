import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/urls/apis.dart';
import '../models/home_dto.dart';

@LazySingleton()
class GetTrendingNowData {
  final http.Client _client;
  GetTrendingNowData(this._client);

  Future<HomeDto> getData() async {
    final response = await _client.get(Uri.parse(Apis.trendingNowApi));
    if (response.statusCode == 200) {
      return HomeDto.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
