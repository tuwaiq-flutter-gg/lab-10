import 'package:flutter/material.dart';
import 'package:salem_lab10/main.dart';

class Txtf extends StatelessWidget {
  Txtf({super.key, required this.hint, required this.arTxt});
  final searchCtrl = TextEditingController();
  String hint;
  TextAlign arTxt;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: arTxt,
      controller: searchCtrl,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(16),
          fillColor: lightgrey),
    );
  }
}
