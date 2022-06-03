import 'package:deliverer/common/palette.dart';
import 'package:deliverer/views/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = ThemeData(
      primarySwatch: Palette.primarySwatch,
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Deliverer',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
