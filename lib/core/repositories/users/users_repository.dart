import 'package:provider_immutable_state/core/models/user/user.dart';

abstract class UsersRepository {
  Future<User> currentUser();
}
