import 'dart:math' as math;

import 'package:bloc_library_template/core/exceptions/repository/repository_exception.dart';
import 'package:bloc_library_template/core/models/user/user.dart';
import 'package:bloc_library_template/core/repositories/users/users_repository.dart';
import 'package:uuid/uuid.dart';

class UsersRepositoryImpl implements UsersRepository {
  @override
  Future<User> currentUser() async {
    await Future.delayed(const Duration(milliseconds: 400));
    _randomlyThrowServerError();

    return User(
      created: DateTime.now(),
      id: Uuid().v4(),
      fullName: 'Billy Bob',
    );
  }

  void _randomlyThrowServerError() {
    var r = math.Random().nextDouble();
    if (r < 0.1) {
      throw RepositoryException.serverError();
    }
  }
}
