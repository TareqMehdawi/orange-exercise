import 'package:flutter/material.dart';

Widget customButtonWithIcon({required String text, required IconData icon}){
  return InkWell(
    onTap: () {},
    child: Container(
      width: 180,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
           Icon(icon,color: Colors.white),
        ],
      ),
    ),
  );
}