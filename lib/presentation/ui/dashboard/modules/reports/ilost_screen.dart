import 'package:authentication/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

class LostScreen extends StatefulWidget {
  const LostScreen({super.key});

  @override
  State<LostScreen> createState() => _LostScreenState();
}

class _LostScreenState extends State<LostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
    );
  }
}
