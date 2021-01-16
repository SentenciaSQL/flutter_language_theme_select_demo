import 'package:flutter_localization_demo/src/classes/languages.dart';

class LanguageHi extends Languages {
  @override
  String get appName => 'बोली';

  @override
  String get labelWelcome => 'स्वागत हे';

  @override
  String get labelSelectLanguage => 'भाषा का चयन करें';

  @override
  String get labelInfo => 'यह मल्टी लैंग्वेज डेमो एप्लीकेशन है';

  @override
  String get textInfo => 'यह दूसरी स्क्रीन के लिए एक परीक्षण पैराग्राफ है, यह दूसरी स्क्रीन के लिए एक परीक्षण पैराग्राफ है, यह दूसरी स्क्रीन के लिए एक परीक्षण पैराग्राफ है';

  // Begin menu options
  @override
  String get homePage => 'घर';

  @override
  String get secondPage => 'दूसरा पेज';

  @override
  String get optionsPage => 'समायोजन';
  // End menu options

  // Setting page
  @override
  String get darkMode => 'डार्क मोड';
  // End setting page
}