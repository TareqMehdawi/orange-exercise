import 'package:flutter/material.dart';
import 'package:login_excercise_2/pages/login_page.dart';
import 'package:login_excercise_2/pages/register_page.dart';
import 'package:login_excercise_2/widgets/background_image.dart';
import 'package:login_excercise_2/widgets/button_with_icon.dart';
import 'package:login_excercise_2/widgets/text_fields.dart';
import '../widgets/text_button.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Center(
                      child: Text(
                        'RESET\n NOW',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 250,
                    ),
                    formFields(text: 'Email', length: 20),
                    customButtonWithIcon(
                        text: 'RESET NOW', icon: Icons.autorenew_rounded),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .15),
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
                          textButton(text: 'Login', function: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
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
