import 'package:deliverer/views/components/form/pass_field.dart';
import 'package:deliverer/views/components/form/text_field.dart';
import 'package:deliverer/views/screens/auth/sign_up.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                theme.primaryColorDark,
                theme.primaryColor,
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
                  SizedBox(
                    width: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black87,
                        onPrimary: Colors.white,
                        padding: const EdgeInsets.all(0),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        await Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignUpScreen()),
                        );
                      },
                      child: const RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Sign up here",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            runSpacing: 20,
                            children: [
                              Center(
                                child: Image.asset('assets/login.png'),
                              ),
                              Text(
                                'Remember us about you',
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
                                  const DPassField(
                                    hint: 'Your password',
                                    prefix: Icons.key,
                                    isLast: true,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: remember,
                                        activeColor: Colors.white,
                                        checkColor: theme.primaryColor,
                                        side: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        onChanged: (_) {
                                          setState(() {
                                            remember = !remember;
                                          });
                                        },
                                      ),
                                      const Expanded(
                                          child: Text(
                                        'Remember me',
                                        style: TextStyle(color: Colors.white),
                                      ))
                                    ],
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: _onSignIn,
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 10,
                                        ),
                                        child: Text(
                                          'Login',
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
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  _onSignIn() {
    // Sign in logic here
  }
}
