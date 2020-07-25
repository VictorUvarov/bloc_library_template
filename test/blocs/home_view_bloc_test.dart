import 'package:bloc_library_template/core/exceptions/repository/repository_exception.dart';
import 'package:bloc_library_template/core/repositories/users/users_repository.dart';
import 'package:bloc_library_template/locator.dart';
import 'package:bloc_library_template/ui/views/home/bloc/home_view_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks/classes.dart';
import '../mocks/data.dart';

void main() {
  UsersRepository usersRepository;
  HomeViewBloc homeViewBloc;

  setUp(() {
    locator.allowReassignment = true;

    usersRepository = UsersRepositoryMock();
    locator.registerSingleton<UsersRepository>(usersRepository);

    homeViewBloc = HomeViewBloc();
  });

  group('HomeViewBloc', () {
    blocTest(
      'emits [HomeViewState.loading, HomeViewState.loaded] when HomeViewEvent.reloadUser is added successfully',
      build: () {
        when(usersRepository.currentUser()).thenAnswer((_) async => userMock);
        return homeViewBloc;
      },
      act: (HomeViewBloc cubit) => cubit.add(HomeViewEvent.reloadUser()),
      expect: [
        HomeViewState.loading(),
        HomeViewState.loaded(user: userMock),
      ],
    );

    blocTest(
      'emits [HomeViewState.loading, HomeViewState.error] when HomeViewEvent.reloadUser is added',
      build: () {
        when(usersRepository.currentUser())
            .thenThrow(RepositoryException.general());
        return homeViewBloc;
      },
      act: (HomeViewBloc cubit) => cubit.add(HomeViewEvent.reloadUser()),
      expect: [
        HomeViewState.loading(),
        HomeViewState.error(),
      ],
    );
  });
}
