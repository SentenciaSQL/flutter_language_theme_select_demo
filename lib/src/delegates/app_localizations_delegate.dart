import 'package:flutter/material.dart';
import 'package:flutter_localization_demo/src/classes/languages.dart';
import 'package:flutter_localization_demo/src/languages/language_ar.dart';
import 'package:flutter_localization_demo/src/languages/language_en.dart';
import 'package:flutter_localization_demo/src/languages/language_es.dart';
import 'package:flutter_localization_demo/src/languages/language_hi.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {

  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es', 'ar', 'hi'].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  @override
  bool shouldReload(covariant LocalizationsDelegate old) => false;

  static Future<Languages> _load(Locale locale) async{
    switch (locale.languageCode) {
      case 'en':
        return LanguageEn();
      case 'es':
        return LanguageEs();
      case 'ar':
        return LanguageAr();
      case 'hi':
        return LanguageHi();
      default:
        return LanguageEn();
    }
  }

}