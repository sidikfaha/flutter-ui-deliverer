import 'package:deliverer/features/auth/auth_service.dart';
import 'package:deliverer/views/screens/auth/sign_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _fetch() async {
    await Future.delayed(const Duration(seconds: 2));
    AuthService.isLogged().then((value) {
      if (!value) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _fetch();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(color: theme.primaryColor),
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black.withOpacity(.7),
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              children: [
                const TextSpan(text: "deliver"),
                TextSpan(
                  text: "er",
                  style: TextStyle(color: theme.primaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
