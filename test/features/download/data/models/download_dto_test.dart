import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:netflix_clone/features/download/data/models/download_dto.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tDownloadDto = DownloadDto(resultsList: [
    json.decode(fixture('trending_url_response_filtered.json')),
  ]);

  test('from Json', () {
    //arrange
    Map<String, dynamic> jsonMap = json.decode(fixture('trending_url_response.json'));
    //act
    final result = DownloadDto.fromJson(jsonMap);
    //assert
    expect(result, tDownloadDto);
  });

  test('to Json', () {
    //act
    final result = tDownloadDto.toJson();
    //assert
    final expectedMap = {
      'results': [
        json.decode(fixture('trending_url_response_filtered.json')),
      ]
    };
    expect(result, expectedMap);
  });
}
