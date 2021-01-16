import 'package:flutter_localization_demo/src/classes/languages.dart';

class LanguageEn extends Languages{
  
  @override
  String get appName => "Languages";

  @override
  String get labelWelcome => 'Welcome';

  @override
  String get labelSelectLanguage => 'Select Language';

  @override
  String get labelInfo => 'This is multi-languages demo application';

  @override
  String get textInfo => 'This is a test paragraph for the second screen, This is a test paragraph for the second screen, This is a test paragraph for the second screen';

  // Begin menu options
  @override
  String get homePage => 'Home';

  @override
  String get secondPage => 'Second Page';

  @override
  String get optionsPage => 'Settings'; 
  // End menu options

  // Setting page
  @override
  String get darkMode => 'Dark mode';
  // End setting page

}