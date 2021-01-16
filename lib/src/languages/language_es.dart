import 'package:flutter_localization_demo/src/classes/languages.dart';

class LanguageEs extends Languages {
  @override
  String get appName => 'idiomas';

  @override
  String get labelWelcome => 'Bienvenido';

  @override
  String get labelSelectLanguage => 'Seleccione idioma';

  @override
  String get labelInfo => 'Esta es un demo de aplicación multi-idiomas';
  
  @override
  String get textInfo => 'Este es un parrafo de prueba para la una segunda pantalla, Este es un parrafo de prueba para la una segunda pantalla, Este es un parrafo de prueba para la una segunda pantalla';

  // Begin menu options
  @override
  String get homePage => 'Inicio';

  @override
  String get secondPage => 'Segunda Página';

  @override
  String get optionsPage => 'Configuración';
  // End menu options

  // Setting page
  @override
  String get darkMode => 'Modo oscuro';
  // End setting page
}