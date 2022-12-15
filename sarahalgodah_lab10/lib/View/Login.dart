import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sarahalgodah_lab10/Controllers/LanguagesControllers.dart';
import 'package:sarahalgodah_lab10/View/CustomTextFaild.dart';
import 'package:sarahalgodah_lab10/View/LoginImage.dart';
import 'package:sarahalgodah_lab10/View/TermsConditions.dart';

class Login extends StatelessWidget {
  Login({super.key});

  LanguagesController lang = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("AppBartitle".tr),
        centerTitle: true,
        actions: [
          Expanded(
            child: Row(
              children: [
                TextButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      lang.changLanguages(codeLanguages: "en");
                    },
                    child: Text(
                      "EN",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                TextButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      lang.changLanguages(codeLanguages: "er");
                    },
                    child: Text(
                      "ER",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ],
            ),
          )
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: Get.height * 0.80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LoginImage(),
                CustomTextFaild(
                  hintText: "TextFaildEmail".tr,
                ),
                CustomTextFaild(
                  hintText: "TextFailPass".tr,
                ),
                Text("ForgetPass".tr),
                TermsAndConditions(),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {},
                    child: Text("AppBartitle".tr))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
