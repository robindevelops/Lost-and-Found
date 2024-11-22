import 'package:authentication/presentation/ui/dashboard/modules/reports/ifound_screen.dart';
import 'package:authentication/presentation/ui/dashboard/modules/reports/ilost_screen.dart';
import 'package:flutter/material.dart';

class TabNotifier extends ChangeNotifier {
  List<Widget> _screen = [
    FoundScreen(),
    LostScreen(),
  ];
  List<Widget> get screen => _screen;
  // int _currentindex = 0;

  // int get currentindex => _currentindex;

  // void setIndex(int index) {
  //   _currentindex = index;
  //   notifyListeners();
  // }
}
