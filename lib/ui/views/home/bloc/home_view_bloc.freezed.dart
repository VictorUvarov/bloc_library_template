// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeViewEventTearOff {
  const _$HomeViewEventTearOff();

// ignore: unused_element
  _LoadUser loadUser() {
    return const _LoadUser();
  }

// ignore: unused_element
  _ReloadUser reloadUser() {
    return const _ReloadUser();
  }
}

/// @nodoc
// ignore: unused_element
const $HomeViewEvent = _$HomeViewEventTearOff();

/// @nodoc
mixin _$HomeViewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadUser(),
    @required Result reloadUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadUser(),
    Result reloadUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadUser(_LoadUser value),
    @required Result reloadUser(_ReloadUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadUser(_LoadUser value),
    Result reloadUser(_ReloadUser value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $HomeViewEventCopyWith<$Res> {
  factory $HomeViewEventCopyWith(
          HomeViewEvent value, $Res Function(HomeViewEvent) then) =
      _$HomeViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeViewEventCopyWithImpl<$Res>
    implements $HomeViewEventCopyWith<$Res> {
  _$HomeViewEventCopyWithImpl(this._value, this._then);

  final HomeViewEvent _value;
  // ignore: unused_field
  final $Res Function(HomeViewEvent) _then;
}

/// @nodoc
abstract class _$LoadUserCopyWith<$Res> {
  factory _$LoadUserCopyWith(_LoadUser value, $Res Function(_LoadUser) then) =
      __$LoadUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadUserCopyWithImpl<$Res> extends _$HomeViewEventCopyWithImpl<$Res>
    implements _$LoadUserCopyWith<$Res> {
  __$LoadUserCopyWithImpl(_LoadUser _value, $Res Function(_LoadUser) _then)
      : super(_value, (v) => _then(v as _LoadUser));

  @override
  _LoadUser get _value => super._value as _LoadUser;
}

/// @nodoc
class _$_LoadUser implements _LoadUser {
  const _$_LoadUser();

  @override
  String toString() {
    return 'HomeViewEvent.loadUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadUser(),
    @required Result reloadUser(),
  }) {
    assert(loadUser != null);
    assert(reloadUser != null);
    return loadUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadUser(),
    Result reloadUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadUser != null) {
      return loadUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadUser(_LoadUser value),
    @required Result reloadUser(_ReloadUser value),
  }) {
    assert(loadUser != null);
    assert(reloadUser != null);
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadUser(_LoadUser value),
    Result reloadUser(_ReloadUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class _LoadUser implements HomeViewEvent {
  const factory _LoadUser() = _$_LoadUser;
}

/// @nodoc
abstract class _$ReloadUserCopyWith<$Res> {
  factory _$ReloadUserCopyWith(
          _ReloadUser value, $Res Function(_ReloadUser) then) =
      __$ReloadUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReloadUserCopyWithImpl<$Res> extends _$HomeViewEventCopyWithImpl<$Res>
    implements _$ReloadUserCopyWith<$Res> {
  __$ReloadUserCopyWithImpl(
      _ReloadUser _value, $Res Function(_ReloadUser) _then)
      : super(_value, (v) => _then(v as _ReloadUser));

  @override
  _ReloadUser get _value => super._value as _ReloadUser;
}

/// @nodoc
class _$_ReloadUser implements _ReloadUser {
  const _$_ReloadUser();

  @override
  String toString() {
    return 'HomeViewEvent.reloadUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReloadUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadUser(),
    @required Result reloadUser(),
  }) {
    assert(loadUser != null);
    assert(reloadUser != null);
    return reloadUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadUser(),
    Result reloadUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reloadUser != null) {
      return reloadUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadUser(_LoadUser value),
    @required Result reloadUser(_ReloadUser value),
  }) {
    assert(loadUser != null);
    assert(reloadUser != null);
    return reloadUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadUser(_LoadUser value),
    Result reloadUser(_ReloadUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reloadUser != null) {
      return reloadUser(this);
    }
    return orElse();
  }
}

abstract class _ReloadUser implements HomeViewEvent {
  const factory _ReloadUser() = _$_ReloadUser;
}

/// @nodoc
class _$HomeViewStateTearOff {
  const _$HomeViewStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded({@required User user}) {
    return _Loaded(
      user: user,
    );
  }

// ignore: unused_element
  _Error error() {
    return const _Error();
  }
}

/// @nodoc
// ignore: unused_element
const $HomeViewState = _$HomeViewStateTearOff();

/// @nodoc
mixin _$HomeViewState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(User user),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(User user),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  final HomeViewState _value;
  // ignore: unused_field
  final $Res Function(HomeViewState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeViewStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(User user),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(User user),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeViewState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$HomeViewStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Loaded(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'HomeViewState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(User user),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(User user),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeViewState {
  const factory _Loaded({@required User user}) = _$_Loaded;

  User get user;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HomeViewStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'HomeViewState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(User user),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(User user),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeViewState {
  const factory _Error() = _$_Error;
}
