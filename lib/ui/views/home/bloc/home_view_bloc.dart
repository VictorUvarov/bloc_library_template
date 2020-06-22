import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_library_template/core/exceptions/repository/repository_exception.dart';
import 'package:bloc_library_template/core/models/user/user.dart';
import 'package:bloc_library_template/core/repositories/users/users_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'home_view_bloc.freezed.dart';
part 'home_view_event.dart';
part 'home_view_state.dart';

class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  final UsersRepository _usersRepository;

  HomeViewBloc({
    @required UsersRepository usersRepository,
  }) : _usersRepository = usersRepository;

  @override
  HomeViewState get initialState => HomeViewState.loading();

  @override
  Stream<HomeViewState> mapEventToState(
    HomeViewEvent event,
  ) async* {
    yield* event.when(
      loadUser: () => _mapLoadUserToState(),
      reloadUser: () => _mapReloadUserToState(),
    );
  }

  Stream<HomeViewState> _mapLoadUserToState() async* {
    yield HomeViewState.loading();
    try {
      var user = await _usersRepository.currentUser();
      yield HomeViewState.loaded(user: user);
    } on RepositoryException catch (_) {
      yield HomeViewState.error();
    }
  }

  Stream<HomeViewState> _mapReloadUserToState() async* {
    yield* _mapLoadUserToState();
  }

  @override
  String toString() => 'HomeViewBloc';
}
