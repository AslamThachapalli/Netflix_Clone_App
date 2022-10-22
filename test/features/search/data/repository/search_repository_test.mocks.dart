// Mocks generated by Mockito 5.3.2 from annotations
// in netflix_clone/test/features/search/data/repository/search_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:netflix_clone/features/search/data/datasources/get_top_search_data.dart'
    as _i4;
import 'package:netflix_clone/features/search/data/datasources/search_the_query.dart'
    as _i6;
import 'package:netflix_clone/features/search/data/models/search_active_model_dto.dart'
    as _i3;
import 'package:netflix_clone/features/search/data/models/search_idle_model_dto.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSearchIdleModelDto_0 extends _i1.SmartFake
    implements _i2.SearchIdleModelDto {
  _FakeSearchIdleModelDto_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSearchActiveModelDto_1 extends _i1.SmartFake
    implements _i3.SearchActiveModelDto {
  _FakeSearchActiveModelDto_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetTopSearchData].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTopSearchData extends _i1.Mock implements _i4.GetTopSearchData {
  MockGetTopSearchData() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.SearchIdleModelDto> getData() => (super.noSuchMethod(
        Invocation.method(
          #getData,
          [],
        ),
        returnValue:
            _i5.Future<_i2.SearchIdleModelDto>.value(_FakeSearchIdleModelDto_0(
          this,
          Invocation.method(
            #getData,
            [],
          ),
        )),
      ) as _i5.Future<_i2.SearchIdleModelDto>);
}

/// A class which mocks [SearchTheQuery].
///
/// See the documentation for Mockito's code generation for more information.
class MockSearchTheQuery extends _i1.Mock implements _i6.SearchTheQuery {
  MockSearchTheQuery() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.SearchActiveModelDto> getSearchData(String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSearchData,
          [query],
        ),
        returnValue: _i5.Future<_i3.SearchActiveModelDto>.value(
            _FakeSearchActiveModelDto_1(
          this,
          Invocation.method(
            #getSearchData,
            [query],
          ),
        )),
      ) as _i5.Future<_i3.SearchActiveModelDto>);
}
