// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharif_hw12/Components/Button.dart';
import 'package:sharif_hw12/Components/TextField.dart';
import 'package:sharif_hw12/Controllers/LogInScreenController.dart';

class LogIn extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  LogInController c_controller = Get.find();
  LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LS".tr),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Center(
              child: InkWell(
                onTap: () {
                  Get.locale == Locale("en", "US")
                      ? Get.updateLocale(Locale("ar", "SA"))
                      : Get.updateLocale(Locale("en", "US"));
                },
                child: Text(
                  'LANG'.tr,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20, left: 7, top: 100),
                    child: Row(
                      children: [
                        Text(
                          "L".tr,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextField(
                    title: "U".tr,
                    controller: email,
                  ),
                  CustomTextField(
                    title: "P".tr,
                    controller: password,
                  ),
                  CustomButton(
                    title: 'L'.tr,
                    press: () {},
                  ),
                  CustomButton(
                    title: 'F'.tr,
                    press: () {},
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('N'.tr),
                          Text(
                            "S".tr,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Wrap(
                    runSpacing: -25,
                    children: [
                      Container(
                        margin: Get.locale == Locale("ar", "SA")
                            ? const EdgeInsets.fromLTRB(0, 20, 0, 0)
                            : const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Row(
                          children: [
                            Obx(
                              () => Checkbox(
                                value: c_controller.checkbox.value,
                                onChanged: (bool? value) {
                                  c_controller.checkbox.value = value;
                                },
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                            Text(
                              "T1".tr,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "T2".tr,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "T3".tr,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (Get.locale == Locale("ar", "SA"))
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "T4".tr,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (Get.locale == Locale("en", "US"))
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "T4".tr,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
