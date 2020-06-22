import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider_immutable_state/generated/l10n.dart';
import 'package:provider_immutable_state/locator.dart';
import 'package:provider_immutable_state/logger.dart';
import 'package:provider_immutable_state/ui/shared/themes.dart';
import 'package:provider_immutable_state/ui/views/home/home_view.dart';

void main() async {
  setupLogger();
  setupLocator();
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
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
