class LanguageData {

  final String flag;
  final String name;
  final String languageCode;

  LanguageData(this.flag, this.name, this.languageCode);

  static List<LanguageData> languageList() {
    return <LanguageData> [
      LanguageData('US', 'English', 'en'),
      LanguageData('ES', 'Español', 'es'),
      LanguageData('SA', 'اَلْعَرَبِيَّةُ‎', 'ar'),
      LanguageData('IN', 'हिंदी', 'hi')
    ];
  }

}