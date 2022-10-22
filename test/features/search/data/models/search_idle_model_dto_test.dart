import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:netflix_clone/features/search/data/models/search_idle_model_dto.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tSearchIdleModelDto = SearchIdleModelDto(resultsList: [
    json.decode(fixture('trending_url_response_filtered.json')),
  ]);

  group('from json', () {
    test(
      'should return a valid model when json is passed',
      () {
        //arrange
        Map<String, dynamic> jsonMap = json.decode(fixture('trending_url_response.json'));
        //act
        final result = SearchIdleModelDto.fromJson(jsonMap);
        //assert
        expect(result, tSearchIdleModelDto);
      },
    );
  });

  group('to json', () {
    test('should return a json map containing proper data', () {
      //act
      final result = tSearchIdleModelDto.toJson();
      //assert
      expect(result, {
        'results': [
          json.decode(fixture('trending_url_response_filtered.json')),
        ],
      });
    });
  });
}
