import 'package:flutter/material.dart';
import 'package:flutter_localization_demo/src/delegates/app_localizations_delegate.dart';

import 'package:flutter_localization_demo/src/preferences/preferences.dart';
import 'package:flutter_localization_demo/src/preferences/preferences_user.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:dynamic_theme/dynamic_theme.dart';

import 'package:flutter_localization_demo/src/pages/home_page.dart';
import 'package:flutter_localization_demo/src/pages/second_page.dart';
import 'package:flutter_localization_demo/src/pages/settings_page.dart';
 
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferencesUser();
  await prefs.initPrefs();
  runApp(MyApp());
}
 
class MyApp extends StatefulWidget {

  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() async{
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
        primarySwatch: Colors.indigo,
        brightness: brightness
      ),
      themedWidgetBuilder: (context, theme) {
        return _setMain(context, theme);
      },
    );
    //return _setMain(context);
  }

  Widget _setMain(BuildContext context, ThemeData theme) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child
        );
      },
      debugShowCheckedModeBanner: false,
      locale: _locale,
      title: 'Multi Language',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName : ( BuildContext context ) => HomePage(),
        SecondPage.routeName : ( BuildContext context ) => SecondPage(),
        SettingsPage.routeName : ( BuildContext context ) => SettingsPage()
      },
      supportedLocales: [
        Locale('en', ''),
        Locale('es', ''),
        Locale('ar', ''),
        Locale('hi', '')
      ],
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale?.languageCode == locale?.languageCode &&
              supportedLocale?.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales?.first;
      },
      theme: theme,
    );
  }
}