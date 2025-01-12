import 'package:authentication/domain/model/category.model.dart';
import 'package:flutter/material.dart';

enum FilterMethod {
  All,
  Active,
  InActive,
}

class FilterNotifier extends ChangeNotifier {
  List _tabs = [
    CategoryTab(icon: Icons.wallet, title: 'Wallet', value: "1"),
    CategoryTab(icon: Icons.phone, title: 'Mobile', value: "2"),
    CategoryTab(icon: Icons.tablet, title: 'Tablet', value: "3"),
    CategoryTab(icon: Icons.laptop, title: 'Laptop', value: "4"),
    CategoryTab(icon: Icons.key, title: 'Key', value: "5"),
  ];

  int _selectedindex = 0;

  int get selectedindex => _selectedindex;
  List get tabs => _tabs;

  void ChangeIndex(int index) {
    _selectedindex = index;
    notifyListeners();
  }
}
