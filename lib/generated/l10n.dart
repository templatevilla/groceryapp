// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `We help you to buy fresh grocery from your home. eat fresh and stay healthy.`
  String get weHelpYouToBuyFreshGroceryFromYourHome {
    return Intl.message(
      'We help you to buy fresh grocery from your home. eat fresh and stay healthy.',
      name: 'weHelpYouToBuyFreshGroceryFromYourHome',
      desc: '',
      args: [],
    );
  }

  /// `Buy Grocery Easily With us`
  String get buyGroceriesEasillyWithUs {
    return Intl.message(
      'Buy Grocery Easily With us',
      name: 'buyGroceriesEasillyWithUs',
      desc: '',
      args: [],
    );
  }

  /// `${data.itemCount!} items`
  String get dataitemcountItems {
    return Intl.message(
      '\${data.itemCount!} items',
      name: 'dataitemcountItems',
      desc: '',
      args: [],
    );
  }

  /// `Select Categories`
  String get selectCategories {
    return Intl.message(
      'Select Categories',
      name: 'selectCategories',
      desc: '',
      args: [],
    );
  }

  /// `Search Categories`
  String get searchCategories {
    return Intl.message(
      'Search Categories',
      name: 'searchCategories',
      desc: '',
      args: [],
    );
  }

  /// `${data.weight}KG`
  String get dataweightkg {
    return Intl.message(
      '\${data.weight}KG',
      name: 'dataweightkg',
      desc: '',
      args: [],
    );
  }

  /// `Search Fruits`
  String get searchFruits {
    return Intl.message(
      'Search Fruits',
      name: 'searchFruits',
      desc: '',
      args: [],
    );
  }

  /// `Fruits`
  String get fruits {
    return Intl.message(
      'Fruits',
      name: 'fruits',
      desc: '',
      args: [],
    );
  }

  /// `inavalid`
  String get inavalid {
    return Intl.message(
      'inavalid',
      name: 'inavalid',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
