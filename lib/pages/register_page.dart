import 'package:flutter/material.dart';

import '../widgets/mutli_page_functions.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(top: 35.0, left: 10),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
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
                        'REGISTER\n     NOW',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 130,
                    ),
                    formFields(text: 'Username', length: 35),
                    formFields(text: 'Email', length: 35),
                    formFields(text: 'Phone', length: 35),
                    formFields(text: 'Password', length: 20),
                    customButtonWithIcon(
                        text: 'REGISTER', icon: Icons.assignment_outlined),
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
