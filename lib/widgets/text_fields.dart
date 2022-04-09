import 'package:flutter/material.dart';

Widget formFields ({required String text,required double length}){
  return Padding(
    padding: EdgeInsets.only(bottom: length),
    child: TextFormField(
      decoration: InputDecoration(
        labelText: text,
        labelStyle:  TextStyle(color: Colors.grey.shade600),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        border: InputBorder.none,
      ),
    ),
  );
}