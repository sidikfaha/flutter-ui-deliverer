import 'package:flutter/material.dart';

class CompleteRegistrationScreen extends StatelessWidget {
  final String username;

  const CompleteRegistrationScreen({Key? key, required this.username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.network('https://picsum.photos/200'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: theme.textTheme.headline4,
                ),
                Text(
                  username,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headline1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Great job! you made it upto this point. Your account was successfully created and you can now use our services while we backup your progression and data.',
                  style: theme.textTheme.bodyLarge!.copyWith(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, onPrimary: Colors.white),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Complete registration',
                        style: theme.textTheme.headline5!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
