import 'package:bloc_library_template/app_delegate.dart';
import 'package:bloc_library_template/generated/l10n.dart';
import 'package:bloc_library_template/locator.dart';
import 'package:bloc_library_template/logger.dart';
import 'package:bloc_library_template/ui/shared/themes.dart';
import 'package:bloc_library_template/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  setupLogger();
  setupLocator();
  Bloc.observer = AppBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
