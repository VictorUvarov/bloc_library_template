// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:bloc_library_template/core/repositories/users/users_repository_impl.dart';
import 'package:bloc_library_template/core/repositories/users/users_repository.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<UsersRepository>(() => UsersRepositoryImpl());
}
