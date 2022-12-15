
import 'package:flutter/material.dart';

class CustomTextFaild extends StatelessWidget {
   CustomTextFaild({super.key, this.hintText});
String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
      decoration: InputDecoration(
        fillColor: Colors.grey[350],
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black),
        helperStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide.none
        )
      ),
      ),
    );
  }
}