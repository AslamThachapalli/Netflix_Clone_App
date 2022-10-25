import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/urls/apis.dart';
import '../models/coming_soon_dto.dart';

@LazySingleton()
class GetComingSoonData {
  final http.Client _client;
  GetComingSoonData(this._client);

  Future<ComingSoonDto> getComingSoonData(int page) async {
    final response = await _client.get(
      Uri.parse('${Apis.comingSoonApiPart1}page=$page${Apis.comingSoonApiPart2}'),
    );
    if (response.statusCode == 200) {
      return ComingSoonDto.fromJson(
        json.decode(response.body),
      );
    } else {
      throw ServerException();
    }
  }
}
