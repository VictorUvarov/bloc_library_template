import 'package:bloc_library_template/core/repositories/users/users_repository.dart';
import 'package:bloc_library_template/core/repositories/users/users_repository_impl.dart';
import 'package:provider/provider.dart';

final providers = [
  Provider<UsersRepository>(
    create: (context) => UsersRepositoryImpl(),
  ),
];
