import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab_10/const/colors.dart';
import 'package:lab_10/locale/clocaleController.dart';
import 'package:lab_10/view/component/TextFieldComponant.dart';
import 'package:lab_10/view/component/TextPrivcy.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controllerLocale = Get.find();

    return Scaffold(
        body: Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            SizedBox(
                height: Get.height,
                width: Get.width,
                child: Image.asset(
                  "images/photo-1588421357574-87938a86fa28.jpeg",
                  fit: BoxFit.cover,
                )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Text(
                    "1".tr,
                    style: TextStyle(
                        color: ColorSelect.lateColors,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: Get.height / 2 + 100,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: ColorSelect.lateColors,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        // 1 - component TextField Name
                        TextFieldStyl(
                          Numberlang: "2",
                          Myicon: Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                          ),
                        ),

                        // 2 - component TextField Email
                        TextFieldStyl(
                          Numberlang: "3",
                          Myicon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                        ),

                        // 3 - component TextField Password
                        TextFieldStyl(
                          Numberlang: "4",
                          Myicon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                        ),

                        // Question: Forgot your password?
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 230, bottom: 0),
                            child: Text(
                              "5".tr,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        Expanded(child: Privcy()),

                        // butom to Sing Up
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (() {}),
                            child: Container(
                              alignment: Alignment.center,
                              height: 55,
                              width: Get.width,
                              decoration: BoxDecoration(
                                  color: ColorSelect.darkColors,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                "6".tr,
                                style: TextStyle(
                                    color: ColorSelect.lateColors,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                        // butom to change language
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (() {
                              controllerLocale.changeLanguage("en");
                            }),
                            onDoubleTap: () {
                              controllerLocale.changeLanguage("ar");
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 55,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: ColorSelect.lateColors,
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                              child: Text(
                                "7".tr,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    ));
  }
}
