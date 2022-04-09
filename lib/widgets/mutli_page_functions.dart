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

Widget textButton({required String text, required VoidCallback function}) {
  return TextButton(
    onPressed: function,
    child:  Text(
      text,
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}


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