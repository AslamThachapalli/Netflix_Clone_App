// Mocks generated by Mockito 5.3.2 from annotations
// in netflix_clone/test/features/home/domain/usecases/get_released_in_past_year_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:netflix_clone/core/errors/failures.dart' as _i5;
import 'package:netflix_clone/features/home/domain/entities/home.dart' as _i6;
import 'package:netflix_clone/features/home/domain/repository/i_home_repo.dart'
    as _i3;

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

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [IHomeRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockIHomeRepo extends _i1.Mock implements _i3.IHomeRepo {
  MockIHomeRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.Home>> getReleasedInPastYear() =>
      (super.noSuchMethod(
        Invocation.method(
          #getReleasedInPastYear,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>.value(
            _FakeEither_0<_i5.Failure, _i6.Home>(
          this,
          Invocation.method(
            #getReleasedInPastYear,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.Home>> getTrendingNow() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTrendingNow,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>.value(
            _FakeEither_0<_i5.Failure, _i6.Home>(
          this,
          Invocation.method(
            #getTrendingNow,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.Home>> getTop10() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTop10,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>.value(
            _FakeEither_0<_i5.Failure, _i6.Home>(
          this,
          Invocation.method(
            #getTop10,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.Home>> getTenseDrama() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTenseDrama,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>.value(
            _FakeEither_0<_i5.Failure, _i6.Home>(
          this,
          Invocation.method(
            #getTenseDrama,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.Home>> getSouthIndianCinema() =>
      (super.noSuchMethod(
        Invocation.method(
          #getSouthIndianCinema,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>.value(
            _FakeEither_0<_i5.Failure, _i6.Home>(
          this,
          Invocation.method(
            #getSouthIndianCinema,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.Home>>);
}
