import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:netflix_clone/features/home/data/models/home_dto.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tHomeDto = HomeDto(resultsList: [
    json.decode(fixture('trending_url_response_filtered.json')),
  ]);

  group('from Json', () {
    test('should return a valid model when json data is passed', () {
      //arrange
      Map<String, dynamic> jsonMap = json.decode(fixture('trending_url_response.json'));
      //act
      final result = HomeDto.fromJson(jsonMap);
      //assert
      expect(result, tHomeDto);
    });
  });

  group('to Json', () {
    test('should return a json map containing proper data', () {
      //act
      final result = tHomeDto.toJson();
      //assert
      final expectedMap = {
        'results': [
          json.decode(fixture('trending_url_response_filtered.json')),
        ]
      };
      expect(result, expectedMap);
    });
  });
}
