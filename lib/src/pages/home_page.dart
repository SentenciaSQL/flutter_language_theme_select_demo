import 'package:flutter/material.dart';
import 'package:flutter_localization_demo/src/classes/languages.dart';
import 'package:flutter_localization_demo/src/models/language_data.dart';
import 'package:flutter_localization_demo/src/preferences/preferences.dart';
import 'package:flag/flag.dart';
import 'package:flutter_localization_demo/src/widgets/menu_widget.dart';
import 'package:flutter_localization_demo/src/widgets/settings_button_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  static final routeName = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).appName),
        actions: [
          SettingsButtonWidget()
        ],
      ),
      drawer: MenuWidget(),
      body: _createBody()
    );
  }

  Widget _createBody() {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 80.0),
            Text(Languages.of(context).labelWelcome, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text(Languages.of(context).labelInfo, style: TextStyle(fontSize: 20, color: Colors.grey), textAlign: TextAlign.center),
            SizedBox(height: 70),
            _createLanguageDropDown()
          ],
        ),
      ),
    );
  }

  Widget _createLanguageDropDown() {
    return DropdownButton(
      iconSize: 30,
      hint: Text(Languages.of(context).labelSelectLanguage),
      items: LanguageData.languageList().map<DropdownMenuItem<LanguageData>>((e) => DropdownMenuItem(
        value: e,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(right: 15.0),
              child: Flag(e.flag, height: 40, width: 40),
            ),
            Container(
              padding: EdgeInsets.only(right: 15.0),
              child: Text(e.name)
            ) 
          ],
        )
      )).toList(), 
      onChanged: (LanguageData laguage) {
        changeLanguage(context, laguage.languageCode);
      }
    );
  }
}