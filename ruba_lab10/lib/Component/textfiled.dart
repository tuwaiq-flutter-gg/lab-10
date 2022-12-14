import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFileded extends StatelessWidget {
  const TextFileded({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
         Text(title.toString(),style: TextStyle
         (fontSize: 20,fontWeight: FontWeight.bold),
         ),
            Padding(padding: EdgeInsets.only(left: 25,right: 25),
            child: Column(
              children: [
                SizedBox(height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Color.fromARGB(255, 197, 186, 228),
                    ),
                  ),
                )
              ],
            ),   
            )
      ],
    );
         
  }
}