import 'package:authentication/core/providers/multi_provider.dart';
import 'package:authentication/core/routes/router.dart';
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
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
        backButtonDispatcher: AppRouter.router.backButtonDispatcher,

        // home: SplashScreen(),
      ),
    );
  }
}
