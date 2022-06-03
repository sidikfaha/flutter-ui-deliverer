import 'package:deliverer/views/components/form/pass_field.dart';
import 'package:deliverer/views/components/form/text_field.dart';
import 'package:deliverer/views/screens/auth/sign_in.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black.withOpacity(.3),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          runSpacing: 20,
                          children: [
                            Center(
                              child: Image.network('https://picsum.photos/280'),
                            ),
                            Text(
                              'Hey newbie!',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headline2?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Wrap(
                              runSpacing: 10,
                              children: [
                                const DTextField(
                                  hint: 'Username',
                                  prefix: Icons.person,
                                ),
                                const DTextField(
                                  hint: 'Your email',
                                  prefix: Icons.alternate_email,
                                ),
                                const DPassField(
                                  hint: 'Your password',
                                  prefix: Icons.lock,
                                ),
                                const DPassField(
                                  hint: 'Confirm password',
                                  prefix: Icons.check,
                                  isLast: true,
                                ),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: (() {}),
                                    style: ElevatedButton.styleFrom(
                                        primary: theme.primaryColor,
                                        onPrimary: Colors.white),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        'Register',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: theme.primaryColor,
                        onPrimary: Colors.white,
                        padding: const EdgeInsets.all(0),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        await Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignInScreen()),
                        );
                      },
                      child: const RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Sign in here",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
