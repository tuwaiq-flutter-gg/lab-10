import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab10/component/textF.dart';
import 'package:lab10/controller/localController.dart';
import 'package:lab10/controller/loginController.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  LoginController loginController = Get.put(LoginController());
  MyLocaleController myLocaleController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1".tr),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                myLocaleController.changeLang(coodLang: "ar");
              },
              child: Text("العربية")),
          ElevatedButton(
              onPressed: () {
                myLocaleController.changeLang(coodLang: "en");
              },
              child: Text("Engilsh")),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text("2".tr),
          ),
          TextF(
            hint: "3".tr,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Text("4".tr),
          ),
          TextF(
            hint: "5".tr,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Text("6".tr),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 15, left: 15),
            child: Row(
              children: [
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: "8".tr,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "9".tr,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromARGB(255, 51, 33, 243),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: "10".tr,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "11".tr,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromARGB(255, 51, 33, 243),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                GetX<LoginController>(builder: (_) {
                  return Material(
                    child: Checkbox(
                      value: loginController.check.value,
                      onChanged: (value) {
                        {
                          loginController.check.value =
                              !loginController.check.value;
                        }
                      },
                    ),
                  );
                }),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 250,
              height: 50,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "7".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.indigo,
              )),
        ],
      )),
    );
  }
}
