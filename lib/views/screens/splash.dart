import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
