import 'package:flutter/material.dart';
import 'package:flutter_localization_demo/src/classes/languages.dart';
import 'package:flutter_localization_demo/src/widgets/menu_widget.dart';

class SecondPage extends StatelessWidget {

  static final routeName = 'second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).appName),
      ),
      drawer: MenuWidget(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Text(Languages.of(context).textInfo, style: TextStyle(fontSize: 20.0), textAlign: TextAlign.justify),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
