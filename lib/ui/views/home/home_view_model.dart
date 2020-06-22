import 'package:logging/logging.dart';
import 'package:provider_immutable_state/core/exceptions/repository/repository_exception.dart';
import 'package:provider_immutable_state/core/repositories/users/users_repository.dart';
import 'package:provider_immutable_state/locator.dart';
import 'package:provider_immutable_state/state/base_view_model.dart';
import 'package:provider_immutable_state/ui/views/home/home_view_state.dart';

class HomeViewModel extends BaseViewModel<HomeViewState> {
  final _usersRepository = locator<UsersRepository>();
  final _log = Logger('HomeViewModel');

  int _loadedCount = 0;

  HomeViewModel() {
    _log.finest('HomeViewModel initialized');
  }

  Future<void> init() async {
    setState(HomeViewState.loading());
    try {
      var user = await _usersRepository.currentUser();
      _loadedCount++;

      setState(HomeViewState.loaded(user: user, count: _loadedCount));
      _log.fine('state: $state');
    } on RepositoryException catch (e) {
      setState(HomeViewState.error(e.toString()));
      _log.shout(e.toString());
    }
  }
}
