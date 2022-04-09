import 'package:flutter/material.dart';
import 'package:login_excercise_2/pages/register_page.dart';
import 'package:login_excercise_2/pages/reset_page.dart';
import 'package:login_excercise_2/widgets/background_image.dart';
import 'package:login_excercise_2/widgets/button_with_icon.dart';
import 'package:login_excercise_2/widgets/text_button.dart';
import 'package:login_excercise_2/widgets/text_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              backgroundContainer(context: context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Center(
                      child: Text(
                        ' OMS\nLOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 220,
                    ),
                    formFields(text: 'Email', length: 35),
                    formFields(text: 'Password', length: 15),
                    customButtonWithIcon(text: 'LOG IN', icon: Icons.lock),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textButton(
                            text: 'Register',
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ),
                              );
                            },
                          ),
                          textButton(text: 'Forgot password?', function: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ResetPasswordPage(),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
