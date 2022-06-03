import 'package:deliverer/views/screens/auth/complete_registration.dart';
import 'package:deliverer/views/screens/auth/sign_in.dart';
import 'package:deliverer/views/screens/auth/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = ThemeData(
      primarySwatch: Colors.pink,
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Deliverer',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const SignUpScreen(),
    );
  }
}
