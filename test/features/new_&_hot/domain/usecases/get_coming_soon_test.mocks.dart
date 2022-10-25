// Mocks generated by Mockito 5.3.2 from annotations
// in netflix_clone/test/features/new_&_hot/domain/usecases/get_coming_soon_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:netflix_clone/core/errors/failures.dart' as _i5;
import 'package:netflix_clone/features/new_&_hot/domain/entities/coming_soon.dart'
    as _i6;
import 'package:netflix_clone/features/new_&_hot/domain/entities/everyones_watching.dart'
    as _i7;
import 'package:netflix_clone/features/new_&_hot/domain/repository/i_new_hot_repo.dart'
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

/// A class which mocks [INewAndHotRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockINewAndHotRepo extends _i1.Mock implements _i3.INewAndHotRepo {
  MockINewAndHotRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.ComingSoon>> getComingSoon(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getComingSoon,
          [],
          {#page: page},
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.ComingSoon>>.value(
            _FakeEither_0<_i5.Failure, _i6.ComingSoon>(
          this,
          Invocation.method(
            #getComingSoon,
            [],
            {#page: page},
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.ComingSoon>>);
  @override
  _i4.Future<
      _i2.Either<_i5.Failure, _i7.EveryOnesWatching>> getEveryOnesWatching(
          {required int? page}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getEveryOnesWatching,
          [],
          {#page: page},
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.Failure, _i7.EveryOnesWatching>>.value(
                _FakeEither_0<_i5.Failure, _i7.EveryOnesWatching>(
          this,
          Invocation.method(
            #getEveryOnesWatching,
            [],
            {#page: page},
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i7.EveryOnesWatching>>);
}
