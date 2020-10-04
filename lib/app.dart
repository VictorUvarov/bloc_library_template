import 'package:bloc_library_template/core/repositories/users/users_repository.dart';
import 'package:bloc_library_template/generated/l10n.dart';
import 'package:bloc_library_template/ui/shared/themes.dart';
import 'package:bloc_library_template/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  final UsersRepository _usersRepository;

  const App({
    Key key,
    @required UsersRepository usersRepository,
  })  : _usersRepository = usersRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _usersRepository,
      child: _AppView(),
    );
  }
}

class _AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => S.of(context).appTitle,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomeView(),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
