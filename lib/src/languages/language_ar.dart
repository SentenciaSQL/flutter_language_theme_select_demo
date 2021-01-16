import 'package:flutter_localization_demo/src/classes/languages.dart';

class LanguageAr extends Languages {
  @override
  String get appName => 'اللغات';

  @override
  String get labelWelcome => 'أهلا بك';

  @override
  String get labelSelectLanguage => 'اختار اللغة';

  @override
  String get labelInfo => 'هذا هو التطبيق التجريبي متعدد اللغات';

  @override
  String get textInfo => 'هذه فقرة اختبار للشاشة الثانية ، هذه فقرة اختبار للشاشة الثانية ، هذه فقرة اختبار للشاشة الثانية';

  // Begin menu options
  @override
  String get homePage => 'الصفحة الرئيسية';

  @override
  String get secondPage => 'الصفحة الثانية';

  @override
  String get optionsPage => 'إعدادات';
  // End menu options

  // Setting page
  @override
  String get darkMode => 'الوضع المظلم';
  // End setting page
}