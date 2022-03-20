import 'package:flutter/material.dart';
import 'package:switch_theme/quadrado_widget.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool isDarkTheme = false;
  List<QuadradoWidget> lista = [];

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  addBloco() {
    lista.add(const QuadradoWidget());
    notifyListeners();
  }

  Widget buildBloco(BuildContext context, int index) {
    return const QuadradoWidget();
  }
}
