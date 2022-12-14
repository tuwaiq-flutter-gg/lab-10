import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ruba_lab10/componant/textfield.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
                child: Column(
                  children: [
                    textfield(labeltext: "Username".tr),
                    SizedBox(height: 20,),
                    textfield(labeltext: "email".tr),
                    SizedBox(height: 20,),
                    textfield(labeltext: "password".tr),
                    SizedBox(height: 20,),
                    textfield(labeltext: "Conpassword".tr),
                    SizedBox(height: 20,),
                     TextButton( onPressed: () {  }, child: Text("ForgetPass".tr,),),
                     SizedBox(height: 40,),
                      Text("Conditions".tr),
                       SizedBox(height: 20,),
                    Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 100, 2, 148)),
                    child: Center(
                        child: TextButton(
                            onPressed: () {
                             
                            },
                            child: Text(
                              "Signbuttom".tr,
                              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w200),
                            ))),
                  ),
                ),
               

               
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 150,
                    
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 100, 2, 148)),
                    child: Center(
                        child: TextButton(
                            onPressed: () {
                             var changelang = Locale("ar", "SA");
                                Get.updateLocale(changelang);
                              
                            },
                            child: Text(
                              "العربية",
                              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w200),
                            ))),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 150,
                    
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 100, 2, 148)),
                    child: Center(
                        child: TextButton(
                            onPressed: () {
                             var changelang = Locale("en", "US");
                                Get.updateLocale(changelang);
                              
                            },
                            child: Text(
                              "English",
                              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w200),
                            ))),
                  ),
                ),
                

                    
                  ],
                ),
              )
            ,
    );
  }
}