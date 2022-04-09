import 'package:flutter/material.dart';

Widget textButton({required String text, required VoidCallback function}) {
  return TextButton(
    onPressed: function,
    child:  Text(
      text,
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}
