import 'package:flutter/material.dart';

enum FilterMethod {
  All,
  Active,
  InActive,
}

class FilterNotifier extends ChangeNotifier {
  int _selectedindex = 0;

  int get selectedindex => _selectedindex;

  void ChangeIndex(int index) {
    _selectedindex = index;
    notifyListeners();
  }
}
