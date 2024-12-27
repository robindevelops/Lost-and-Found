import 'package:authentication/presentation/ui/dashboard/modules/home/home_screen.dart';
import 'package:authentication/presentation/ui/dashboard/modules/reports/reports_screen.dart';
import 'package:authentication/profile_screen.dart';
import 'package:flutter/material.dart';

class Rootvm extends ChangeNotifier {
  int _currentindex = 0;
  int get currentindex => _currentindex;

  void changeIndex(int index) {
    _currentindex = index;
    notifyListeners();
  }

  List<Widget> _screens = [
    HomeScreen(),
    MyreportsScreen(),
    ProfileScreen(),
  ];

  List<Widget> get screens => _screens;
}
