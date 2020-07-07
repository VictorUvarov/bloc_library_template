import 'package:bloc_library_template/core/exceptions/repository/repository_exception.dart';
import 'package:bloc_library_template/core/repositories/users/users_repository.dart';
import 'package:bloc_library_template/locator.dart';
import 'package:bloc_library_template/ui/views/home/bloc/home_view_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../data/mock.dart';

class MockUsersRepository extends Mock implements UsersRepository {}

void main() {
  UsersRepository usersRepository;
  HomeViewBloc homeViewBloc;

  setUpAll(() {
    usersRepository = MockUsersRepository();
    locator.registerSingleton<UsersRepository>(usersRepository);
    homeViewBloc = HomeViewBloc();
  });

  group('HomeViewBloc', () {
    test(
      'emits [HomeViewState.loading, HomeViewState.loaded] when HomeViewEvent.reloadUser is added successfully ',
      () {
        // arrange
        when(usersRepository.currentUser()).thenAnswer((_) async => MOCK_USER);

        // assert later
        final expected = [
          HomeViewState.loading(),
          HomeViewState.loaded(user: MOCK_USER),
        ];
        expectLater(homeViewBloc, emitsInOrder(expected));

        // act
        homeViewBloc.add(HomeViewEvent.reloadUser());
      },
    );

    test(
      'emits [HomeViewState.loading, HomeViewState.error] when HomeViewEvent.reloadUser is added ',
      () {
        // arrange
        when(usersRepository.currentUser())
            .thenThrow(RepositoryException.general());

        // assert later
        final expected = [
          HomeViewState.loading(),
          HomeViewState.error(),
        ];
        expectLater(homeViewBloc, emitsInOrder(expected));

        // act
        homeViewBloc.add(HomeViewEvent.reloadUser());
      },
    );
  });
}
