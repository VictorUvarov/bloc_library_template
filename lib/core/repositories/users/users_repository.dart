import 'package:bloc_library_template/core/models/user/user.dart';

abstract class UsersRepository {
  Future<User> currentUser();
}
