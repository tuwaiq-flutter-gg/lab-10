import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../Component/Button.dart';
import '../Component/TextFieldCom.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    bool isCheck = true;
    return Scaffold(
      backgroundColor: Color(0xFFE5CBA6),
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              // Align(
              //   alignment: Alignment.topRight,
              //   child: ButtonCom(
              //     ButtonName: "changeLang".tr,
              //     OnPressed: () {
              //       var changeAR = Locale("ar", "KSA");
              //       Get.updateLocale(changeAR);
              //     },
              //     Color: Color(0xFF8D3545),
              //     NameColor: Color(0xFF342927),
              //   ),
              // ),
              Align(
                alignment: Alignment.topRight,
                child: ButtonCom(
                  ButtonName: "Change Language",
                  OnPressed: () {
                    Get.defaultDialog(
                        title: "Changee Language",
                        content: Column(
                          children: [
                            ButtonCom(
                              ButtonName: "عربي",
                              OnPressed: () {
                                var changeAR = Locale("ar", "KSA");
                                Get.updateLocale(changeAR);
                              },
                              Color: Color(0xFF8D3545),
                              NameColor: Color(0xFF342927),
                            ),
                            //--------
                            ButtonCom(
                              ButtonName: "English",
                              OnPressed: () {
                                var changeAR = Locale("en", "US");
                                Get.updateLocale(changeAR);
                              },
                              Color: Color(0xFF8D3545),
                              NameColor: Color(0xFF342927),
                            ),
                          ],
                        ));
                  },
                  Color: Color(0xFF8D3545),
                  NameColor: Color(0xFF342927),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text("Title".tr,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF342927))),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 30,
                    width: 280,
                    child: Text("TextField1".tr,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF342927))),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    child: TextFieldCom(),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 30,
                    width: 280,
                    child: Text("TextField2".tr,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF342927))),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    child: TextFieldCom(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //------------------------------------------------------------
                  Row(
                    children: [
                      Checkbox(
                        value: isCheck,
                        onChanged: (value) {
                          // setState(() => isCheck = value!);
                        },
                      ),
                      Text(
                        "terms".tr,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                  // ------------------------------------------------------------
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    child: ButtonCom(
                      ButtonName: "buttom Name".tr,
                      Color: Color(0xFF8D3545),
                      NameColor: Color(0xFF342927),
                      OnPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Text("ForgPass".tr,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF342927))),
                    onTap: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
