import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab10/combonent/CustomButton.dart';
import 'package:lab10/combonent/CustomTextfiled.dart';
import 'package:lab10/rigester/Signin.dart';
import 'package:lab10/rigester/header_widget.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  final double _height = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 55, 55, 55),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: _height, child: HeaderWidget(_height)),
                Container(
                  //     padding: EdgeInsets.only(left: 13, right: 13),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text('a1'.tr, style: TextStyle(fontSize: 70)),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 175,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defulttextlaple(
                                hinttext: 'a2'.tr,
                                // lableText: 'UserName',
                              ),
                              defulttextlaple(
                                hinttext: 'a3'.tr,
                                //   lableText: 'Pssword',
                              ),
                              defulttextlaple(
                                hinttext: 'an11'.tr,
                                //   lableText: 'Pssword',
                              ),
                            ],
                          ),
                        ),
                        defultbutton(
                          text: 'a4'.tr,
                          press: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => navbarrr())));
                          },
                          color: Color.fromARGB(255, 0, 136, 255),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    showAlertDialog(context);
                                  },
                                  child: Text('a6'.tr)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'a5'.tr,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () =>
                                  Get.updateLocale(const Locale('en', 'US')),
                              child: const Text('English'),
                            ),
                            OutlinedButton(
                              onPressed: () =>
                                  Get.updateLocale(const Locale('ar', 'SA')),
                              child: const Text('Arabic'),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("a10".tr),
                              TextButton(
                                onPressed: () {
                                  Get.to(signin());
                                },
                                child: Text('a4'.tr),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("ca1".tr),
    onPressed: () {
      Get.back();
    },
  );
  Widget continueButton = TextButton(
    child: Text("co1".tr),
    onPressed: () {
      Get.back();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("ac1".tr),
    content: Text("an12".tr),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
