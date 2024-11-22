import 'package:authentication/presentation/notifiers/tab_notifier.dart';
import 'package:authentication/presentation/view_models/rootVm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MultiProviders extends StatelessWidget {
  const MultiProviders({required this.child, Key? key}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return Rootvm();
          },
        ),
        ChangeNotifierProvider<TabNotifier>(
          create: (context) {
            return TabNotifier();
          },
        )
      ],
      child: child,
    );
  }
}
