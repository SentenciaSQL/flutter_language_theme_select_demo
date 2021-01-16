import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUser {

  static final PreferencesUser _instance = new PreferencesUser._internal();

  factory PreferencesUser() {
    return _instance;
  }
  
  PreferencesUser._internal();

  SharedPreferences _prefs;

  initPrefs() async{
    this._prefs = await SharedPreferences.getInstance();
  }

  get secondaryTheme {
    return _prefs.getBool('secondaryTheme') ?? false;
  }

  set secondaryTheme(bool value) {
    _prefs.setBool('secondaryTheme', value);
  }

}