import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:netflix_clone/core/errors/exceptions.dart';
import 'package:netflix_clone/core/errors/failures.dart';
import 'package:netflix_clone/features/search/data/datasources/get_top_search_data.dart';
import 'package:netflix_clone/features/search/data/datasources/search_the_query.dart';
import 'package:netflix_clone/features/search/data/models/search_active_model_dto.dart';
import 'package:netflix_clone/features/search/data/models/search_idle_model_dto.dart';
import 'package:netflix_clone/features/search/data/repository/search_repository.dart';
import 'package:netflix_clone/features/search/domain/entities/search_active_model.dart';
import 'package:netflix_clone/features/search/domain/entities/search_idle_model.dart';

import '../../../../fixtures/fixture_reader.dart';
@GenerateMocks([GetTopSearchData, SearchTheQuery])
import 'search_repository_test.mocks.dart';

void main() {
  late MockGetTopSearchData mockGetTopSearchData;
  late MockSearchTheQuery mockSearchTheQuery;
  late SearchRepository repository;

  setUp(() {
    mockSearchTheQuery = MockSearchTheQuery();
    mockGetTopSearchData = MockGetTopSearchData();
    repository = SearchRepository(
      searchTheQuery: mockSearchTheQuery,
      topSearchData: mockGetTopSearchData,
    );
  });

  group('getSearchIdleData', () {
    final tSearchIdleModelDto = SearchIdleModelDto(resultsList: [
      json.decode(fixture('trending_url_response_filtered.json')),
    ]);
    const tSearchIdleModel = SearchIdleModel(
      imageList: ['imageUrl'],
      titleList: ['title'],
    );

    test(
      'should return SearchIdleModel when call to getSearchIdleData successful',
      () async {
        //arrange
        when(mockGetTopSearchData.getData()).thenAnswer((_) async => tSearchIdleModelDto);
        //act
        final result = await repository.getSearchIdleData();
        //assert
        verifyZeroInteractions(mockSearchTheQuery);
        verify(mockGetTopSearchData.getData());
        expect(result, equals(const Right(tSearchIdleModel)));
      },
    );

    test(
      'should return ServerFailure when call to getSearchIdleData was unsuccessful',
      () async {
        //arrange
        when(mockGetTopSearchData.getData()).thenThrow(
          ServerException(),
        );
        //act
        final result = await repository.getSearchIdleData();
        //assert
        verify(mockGetTopSearchData.getData());
        verifyZeroInteractions(mockSearchTheQuery);
        expect(result, equals(const Left(ServerFailure())));
      },
    );
  });

  group('getSearchResults', () {
    final tSearchActiveModelDto = SearchActiveModelDto(
      resultsList: [
        json.decode(fixture('search_response_filtered.json')),
      ],
    );
    const tSearchActiveModel = SearchActiveModel(imageList: ['imageUrl']);
    const tQuery = 'a';

    test(
      'should return SearchActiveModel when call to getSearchResults successful',
      () async {
        //arrange
        when(mockSearchTheQuery.getSearchData(
          any,
        )).thenAnswer((_) async => tSearchActiveModelDto);
        //act
        final result = await repository.getSearchResults(query: tQuery);
        //assert
        verifyZeroInteractions(mockGetTopSearchData);
        verify(mockSearchTheQuery.getSearchData(tQuery));
        expect(result, equals(const Right(tSearchActiveModel)));
      },
    );

    test(
      'should return ServerFailure when call to getSearchResults was unsuccessful',
      () async {
        //arrange
        when(mockSearchTheQuery.getSearchData(
          any,
        )).thenThrow(
          ServerException(),
        );
        //act
        final result = await repository.getSearchResults(query: tQuery);
        //assert
        verify(mockSearchTheQuery.getSearchData(tQuery));
        expect(result, equals(const Left(ServerFailure())));
      },
    );
  });
}
