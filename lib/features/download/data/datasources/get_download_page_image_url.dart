import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/urls/apis.dart';
import '../models/download_dto.dart';

@LazySingleton()
class GetDownloadPageImageUrl {
  final http.Client _client;
  GetDownloadPageImageUrl(this._client);

  Future<DownloadDto> getImageUrl() async {
    final response = await _client.get(Uri.parse(Apis.getDownloadImageApi));
    if (response.statusCode == 200) {
      return DownloadDto.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
