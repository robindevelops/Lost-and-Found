import 'package:authentication/core/routes/router.dart';
import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/ui/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Start the animation

    Timer(const Duration(seconds: 3), () {
      context.pushReplacement(AppRouter.welcomePage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.Darkblue,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Icon(
              Icons.person_search_rounded,
              color: Colors.white,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
