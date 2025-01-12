import 'package:authentication/app.dart';
import 'package:authentication/setup.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await setup();
  runApp(const App());
}
//hello this is dev branch