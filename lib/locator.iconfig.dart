// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:provider_immutable_state/core/repositories/users/users_repository_impl.dart';
import 'package:provider_immutable_state/core/repositories/users/users_repository.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<UsersRepository>(() => UsersRepositoryImpl());
}
