import 'package:flutter/material.dart';

push(BuildContext context, Widget page, {bool replace = false}) async {
  MaterialPageRoute pageRoute =
      MaterialPageRoute(builder: (BuildContext context) => page);
  NavigatorState nav = Navigator.of(context);
  replace ? await nav.pushReplacement(pageRoute) : await nav.push(pageRoute);
}
