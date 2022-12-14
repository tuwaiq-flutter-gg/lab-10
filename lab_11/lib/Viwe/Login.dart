import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab_11/components/Button.dart';
import 'package:lab_11/components/RowChoes.dart';
import 'package:lab_11/components/TextFiled.dart';

class Login1 extends StatelessWidget {
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(227, 186, 186, 245),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: Get.width,
            height: 600,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFFFFFF)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Login".tr,
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                LoginTextFiled(
                  labelt: "Enter username".tr,
                ),
                LoginTextFiled(
                  labelt: "Enter Password".tr,
                ),
                RowForgetpass(
                    name_f: "Forget Password?".tr,
                    name_c: "I agree to the terms and privacy".tr),
                ButtonC(
                  onPressed: (() {
                    
                  }),
                  childs: Text("Login".tr),
                ),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed:(() {
                          var loc = Locale("en", "US");
                        Get.updateLocale(loc);
                        }) , icon: Icon(Icons.language)),
                        Text("En"),
                        IconButton(onPressed:(() {
                          var loc = Locale("ar", "SA");
                        Get.updateLocale(loc);
                        }) , icon: Icon(Icons.language)),
                        Text("SA")
                      ],
                    ),
                   
                    
              ],
            ),
          ),
        )
      ]),
    );
  }
}
