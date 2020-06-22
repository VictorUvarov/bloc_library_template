import 'package:bloc_library_template/core/exceptions/repository/repository_exception.dart';
import 'package:bloc_library_template/core/repositories/users/users_repository.dart';
import 'package:bloc_library_template/ui/views/home/bloc/home_view_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../data/mock.dart';

class MockUsersRepository extends Mock implements UsersRepository {}

void main() {
  UsersRepository usersRepository;
  HomeViewBloc homeViewBloc;

  setUp(() {
    usersRepository = MockUsersRepository();
    when(usersRepository.currentUser()).thenAnswer((_) async => MOCK_USER);
    homeViewBloc = HomeViewBloc(usersRepository: usersRepository);
  });

  group('HomeViewBloc', () {
    blocTest<HomeViewBloc, HomeViewEvent, HomeViewState>(
      'emits [HomeViewState.loading, HomeViewState.loaded] when HomeViewEvent.reloadUser is added successfully ',
      build: () async {
        return homeViewBloc;
      },
      act: (bloc) async {
        bloc.add(HomeViewEvent.reloadUser());
      },
      skip: 0, // since initial state is already HomeViewState.loading()
      expect: <HomeViewState>[
        HomeViewState.loading(),
        HomeViewState.loaded(user: MOCK_USER),
      ],
    );

    blocTest<HomeViewBloc, HomeViewEvent, HomeViewState>(
      'emits [HomeViewState.loading, HomeViewState.error] when HomeViewEvent.reloadUser is added ',
      build: () async {
        when(usersRepository.currentUser())
            .thenThrow(RepositoryException.general());
        return homeViewBloc;
      },
      act: (bloc) async {
        bloc.add(HomeViewEvent.reloadUser());
      },
      skip: 0, // since initial state is already HomeViewState.loading()
      expect: <HomeViewState>[
        HomeViewState.loading(),
        HomeViewState.error(),
      ],
    );
  });
}
