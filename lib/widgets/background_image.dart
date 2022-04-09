import 'package:flutter/material.dart';

Widget backgroundContainer({required BuildContext context}){
  return Container(
    height: MediaQuery.of(context).size.height,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/background.jpeg'),
        fit: BoxFit.cover,
      ),
    ),
  );
}