import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:netflix_clone/features/download/data/models/download_dto.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tDownloadDto = DownloadDto(resultsList: [
    json.decode(fixture('search_response_filtered.json')),
  ]);

  group('from Json', () {
    test('should return a valid model when json data is passed', () {
      //arrange
      Map<String, dynamic> jsonMap = json.decode(fixture('search_response.json'));
      //act
      final result = DownloadDto.fromJson(jsonMap);
      //assert
      expect(result, tDownloadDto);
    });
  });

  group('to Json', () {
    test('should return a json map containing proper data', () {
      //act
      final result = tDownloadDto.toJson();
      //assert
      final expectedMap = {
        'results': [
          json.decode(fixture('search_response_filtered.json')),
        ]
      };
      expect(result, expectedMap);
    });
  });
}
