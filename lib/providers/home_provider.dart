
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
  List<String> planetList = ['assets/img_planets/saturnx.png', 'assets/img_planets/earth.png'];
  String p = 'assets/img_planets/saturnx.png';

  getPlanet() {
    p = 'assets/img_planets/earth.png';
    notifyListeners();
  }
}