import 'package:deliverer/common/helpers.dart';
import 'package:deliverer/features/auth/auth_service.dart';
import 'package:deliverer/views/screens/auth/sign_in.dart';
import 'package:deliverer/views/screens/into.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isFirstRun = true;

  _fetch() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted && isFirstRun) {
      push(context, const IntroScreen(), replace: true);
      return;
    }
    AuthService.isLogged().then((value) {
      if (!value) {
        push(context, const SignInScreen(), replace: true);
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
                child: Image.asset(
              'assets/logo.png',
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            )),
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
