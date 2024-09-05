import 'package:flutter/material.dart';
import 'package:themes/themes/theme.dart';
class ThemeProvider with ChangeNotifier{

  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData theme){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    _themeData = _themeData == lightMode ? darkMode : lightMode;
    notifyListeners();
  }
  
}