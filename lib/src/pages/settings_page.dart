import 'package:flutter/material.dart';
import 'package:flutter_localization_demo/src/classes/languages.dart';
import 'package:flutter_localization_demo/src/models/language_data.dart';

import 'package:flutter_localization_demo/src/widgets/menu_widget.dart';

import 'package:flutter_localization_demo/src/preferences/preferences_user.dart';

import 'package:dynamic_theme/dynamic_theme.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
   bool _secondaryTheme;

   final prefs = new PreferencesUser();

   @override
  void initState() {
    super.initState();
    _secondaryTheme = prefs.secondaryTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).optionsPage),
      ),
      drawer: MenuWidget(),
      body: _changeColor()
    );
  }

  Widget _changeColor() {
    return Container(
      child: ListView(
        children: [
          SwitchListTile(
              value: _secondaryTheme,
              title: Text(Languages.of(context).darkMode),
              onChanged: (value) {
                setState(() {
                  _secondaryTheme = value;
                  prefs.secondaryTheme = value;
                  _changeColorAction();
                });
              }
          )
        ],
      ),
    );
  }

  void _changeColorAction() {
    print('Valor de switch: $_secondaryTheme');
    DynamicTheme.of(context).setBrightness(
      (_secondaryTheme == true) ? Brightness.dark : Brightness.light
    );

  }
}