import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:netflix_clone/features/new_&_hot/data/models/coming_soon_dto.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tComingSoonDto = ComingSoonDto(resultsList: [
    json.decode(fixture('hot_new_api_response_filtered.json')),
  ]);

  group('from json', () {
    test(
      'should return a valid model when json data is passed',
      () {
        //arrange
        Map<String, dynamic> jsonMap = json.decode(fixture('hot_new_api_response.json'));
        //act
        final result = ComingSoonDto.fromJson(jsonMap);
        //assert
        expect(result, tComingSoonDto);
      },
    );
  });

  group('to json', () {
    test(
      'should return a json map containing proper data',
      () {
        //act
        final result = tComingSoonDto.toJson();
        //assert
        final expectedMap = {
          'results': [
            json.decode(fixture('hot_new_api_response_filtered.json')),
          ]
        };
        expect(result, expectedMap);
      },
    );
  });
}
