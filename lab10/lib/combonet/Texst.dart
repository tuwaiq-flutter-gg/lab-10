

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Texst extends StatelessWidget {
   Texst({super.key,required 
   this.texst,
   required this.hintText});
  late  String texst;
 
  late  String hintText;
 
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 50,
      width:350 ,
      padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(color: 
                    Color.fromARGB(255, 219, 215, 215),
                    borderRadius: BorderRadius.circular(20)),
     
      
      child: TextField(
                      decoration: InputDecoration(
                        border:InputBorder.none,
                       hintText: hintText
                      ),
                     ),
    );
  }
}