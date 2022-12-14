import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_lab10/controller/language_controller.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.title, required this.mytextController});

  final String title ;
  final TextEditingController mytextController ;

  @override
  Widget build(BuildContext context) {
    LanguageController langController = Get.find();
    return Container(

      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [

          Text(title, textAlign: TextAlign.center , style: const TextStyle(fontSize: 16),),

          TextField(
            controller: mytextController,
            
            decoration: const InputDecoration(
              fillColor: Color.fromARGB(255, 227, 208, 245),
              filled: true, 
            ),
          ),

        ],
      ),
    );
  }
}