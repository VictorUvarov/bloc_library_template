// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repository_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RepositoryExceptionTearOff {
  const _$RepositoryExceptionTearOff();

// ignore: unused_element
  _General general() {
    return const _General();
  }

// ignore: unused_element
  _ServerError serverError() {
    return const _ServerError();
  }
}

/// @nodoc
// ignore: unused_element
const $RepositoryException = _$RepositoryExceptionTearOff();

/// @nodoc
mixin _$RepositoryException {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result general(),
    @required Result serverError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result general(),
    Result serverError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result general(_General value),
    @required Result serverError(_ServerError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result general(_General value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RepositoryExceptionCopyWith<$Res> {
  factory $RepositoryExceptionCopyWith(
          RepositoryException value, $Res Function(RepositoryException) then) =
      _$RepositoryExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepositoryExceptionCopyWithImpl<$Res>
    implements $RepositoryExceptionCopyWith<$Res> {
  _$RepositoryExceptionCopyWithImpl(this._value, this._then);

  final RepositoryException _value;
  // ignore: unused_field
  final $Res Function(RepositoryException) _then;
}

/// @nodoc
abstract class _$GeneralCopyWith<$Res> {
  factory _$GeneralCopyWith(_General value, $Res Function(_General) then) =
      __$GeneralCopyWithImpl<$Res>;
}

/// @nodoc
class __$GeneralCopyWithImpl<$Res>
    extends _$RepositoryExceptionCopyWithImpl<$Res>
    implements _$GeneralCopyWith<$Res> {
  __$GeneralCopyWithImpl(_General _value, $Res Function(_General) _then)
      : super(_value, (v) => _then(v as _General));

  @override
  _General get _value => super._value as _General;
}

/// @nodoc
class _$_General implements _General {
  const _$_General();

  @override
  String toString() {
    return 'RepositoryException.general()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _General);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result general(),
    @required Result serverError(),
  }) {
    assert(general != null);
    assert(serverError != null);
    return general();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result general(),
    Result serverError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (general != null) {
      return general();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result general(_General value),
    @required Result serverError(_ServerError value),
  }) {
    assert(general != null);
    assert(serverError != null);
    return general(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result general(_General value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class _General implements RepositoryException {
  const factory _General() = _$_General;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$RepositoryExceptionCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc
class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'RepositoryException.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result general(),
    @required Result serverError(),
  }) {
    assert(general != null);
    assert(serverError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result general(),
    Result serverError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result general(_General value),
    @required Result serverError(_ServerError value),
  }) {
    assert(general != null);
    assert(serverError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result general(_General value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements RepositoryException {
  const factory _ServerError() = _$_ServerError;
}
