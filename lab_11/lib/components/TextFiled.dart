import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginTextFiled extends StatelessWidget {
  const LoginTextFiled({super.key, required this.labelt});
  final String labelt ;

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 14),
                    child: TextField(
                      decoration: InputDecoration(  
    labelText:  labelt.toString(),  
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20)
    )
  ),  
                    ),
                  );
  }
}