import 'package:deliverer/common/helpers.dart';
import 'package:deliverer/views/screens/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return IntroductionScreen(
      pages: getPages(context),
      onDone: () {
        push(context, const SignInScreen(), replace: true);
      },
      showBackButton: true,
      showNextButton: true,
      next: const Icon(Icons.arrow_right),
      back: const Icon(Icons.arrow_left),
      done: const Icon(Icons.check),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(30.0, 10.0),
          activeColor: theme.colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }

  getPages(BuildContext context) {
    PageViewModel page1 = PageViewModel(
      title: 'Your Stuffz',
      body:
          "Got some stuffs to be delivered ? Don't worry, a solution already ready for you.",
      image: Center(
        child: Image.asset(
          'assets/amico.png',
        ),
      ),
      decoration: getDeco(context),
    );

    PageViewModel page2 = PageViewModel(
      title: 'The Deliverer',
      body:
          "A delivery person at your disposal at the right place, at the right time.",
      image: Center(
        child: Image.asset(
          'assets/agent.png',
        ),
      ),
      decoration: getDeco(context),
    );

    PageViewModel page3 = PageViewModel(
      title: 'Their Feelingz',
      body:
          "Have your relatives a joyfully drawn smile and an assured satisfaction.",
      image: Center(
        child: Image.asset(
          'assets/pana.png',
        ),
      ),
      decoration: getDeco(context),
    );

    return [page1, page2, page3];
  }

  getDeco(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return PageDecoration(
      bodyAlignment: Alignment.topLeft,
      pageColor: theme.primaryColor,
      bodyTextStyle: const TextStyle(fontSize: 26),
      titleTextStyle: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
