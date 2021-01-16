import 'package:flutter/material.dart';
import 'package:flutter_localization_demo/src/pages/settings_page.dart';

class SettingsButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.settings, color: Colors.white),
      onPressed: () {
        Navigator.pushNamed(context, SettingsPage.routeName);
      },
    );
  }
}
