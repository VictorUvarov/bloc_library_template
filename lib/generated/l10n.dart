// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Provider Immutable State`
  String get appTitle {
    return Intl.message(
      'Provider Immutable State',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homeViewTitle {
    return Intl.message(
      'Home',
      name: 'homeViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get homeViewId {
    return Intl.message(
      'ID',
      name: 'homeViewId',
      desc: '',
      args: [],
    );
  }

  /// `Created`
  String get homeViewCreated {
    return Intl.message(
      'Created',
      name: 'homeViewCreated',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get homeViewFullName {
    return Intl.message(
      'Full name',
      name: 'homeViewFullName',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural, one{user loaded 1 time} other{user loaded {howMany} times}}`
  String homeViewCount(num howMany) {
    return Intl.plural(
      howMany,
      one: 'user loaded 1 time',
      other: 'user loaded $howMany times',
      name: 'homeViewCount',
      desc: '',
      args: [howMany],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}