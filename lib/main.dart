import 'package:bloc/bloc.dart';
import 'package:bloc_library_template/core/repositories/users/users_repository_impl.dart';
import 'package:flutter/widgets.dart';

import 'app.dart';
import 'app_delegate.dart';
import 'logger.dart';

void main() {
  setupLogger();
  Bloc.observer = AppBlocObserver();
  runApp(App(usersRepository: UsersRepositoryImpl()));
}
