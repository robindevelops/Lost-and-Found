import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/view_models/rootVm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Rootvm rootvm = context.watch<Rootvm>();
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      body: IndexedStack(
        index: rootvm.currentindex,
        children: rootvm.screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: rootvm.currentindex,
        onTap: (value) => rootvm.changeIndex(value),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.blue[800],
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "My report",
            icon: Icon(
              Icons.report_problem_rounded,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
