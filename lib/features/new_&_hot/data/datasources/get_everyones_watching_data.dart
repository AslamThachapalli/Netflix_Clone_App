import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/urls/apis.dart';
import '../models/everyones_watching_dto.dart';

@LazySingleton()
class GetEveryOnesWatchingData {
  final http.Client _client;
  GetEveryOnesWatchingData(this._client);

  Future<EveryOnesWatchingDto> getEveryOnesWatchingData(int page) async {
    final response = await _client.get(
      Uri.parse('${Apis.everyOnesWatchingApiPart1}page=$page${Apis.everyOnesWatchingApiPart2}'),
    );
    if (response.statusCode == 200) {
      return EveryOnesWatchingDto.fromJson(
        json.decode(response.body),
      );
    } else {
      throw ServerException();
    }
  }
}
