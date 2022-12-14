import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
            onPressed:(){          } ,
          
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  backgroundColor:  Color.fromARGB(255, 171, 150, 229), minimumSize: Size(180, 50),),
                  child: Text( title.toString(),style: TextStyle
                  (fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,))
          );
  }
}