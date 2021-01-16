import 'package:flutter/material.dart';

import 'package:flutter_localization_demo/src/classes/languages.dart';

import 'package:flutter_localization_demo/src/preferences/preferences_user.dart';

import 'package:flutter_localization_demo/src/pages/home_page.dart';
import 'package:flutter_localization_demo/src/pages/second_page.dart';
import 'package:flutter_localization_demo/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final String pageRoute = ModalRoute.of(context).settings.name;

    bool _secondaryTheme;

    final prefs = new PreferencesUser();
    _secondaryTheme = prefs.secondaryTheme;


    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              color: (_secondaryTheme) ? Colors.black54 : Colors.indigo
            ),
          ),
          ListTile(
            leading: Icon(Icons.language_outlined, color: Colors.blue),
            title: Text(Languages.of(context).homePage),
            onTap: () => (HomePage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, HomePage.routeName) : null
          ),
          ListTile(
            leading: Icon(Icons.text_fields, color: Colors.blue),
            title: Text(Languages.of(context).secondPage),
            onTap: () => (SecondPage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, SecondPage.routeName) : null,
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text(Languages.of(context).optionsPage),
            onTap: () => (SettingsPage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, SettingsPage.routeName) : null,
          ),
        ],
      ),
    );
  }
}
