import 'package:authentication/core/providers/multi_provider.dart';
import 'package:authentication/presentation/ui/authentication/signin_screen.dart';
import 'package:authentication/presentation/ui/welcome/welcome_screen.dart';
import 'package:authentication/spalsh.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProviders(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}