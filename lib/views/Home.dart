import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hadeel_lab10/components/customTextField.dart';

import 'package:hadeel_lab10/components/primaryButton.dart';
import 'package:hadeel_lab10/components/textButton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isChecked = false;
  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "SignIn".tr,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //   if (Get.locale == Locale("en", "US"))
                //     Get.updateLocale(Locale("Ar", "SA"));
                //   else
                //     Get.updateLocale(Locale("Ar", "SA"));
                // },
              },
              icon: Icon(Icons.language_rounded))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.1,
          ),
          customTextField(
            name: "Email".tr,
            isPass: false,
            hint: "Enter your email".tr,
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
              size: 18,
            ),
            controller: controller,
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          customTextField(
            name: "Password".tr,
            prefixIcon: Icon(
              CupertinoIcons.lock_fill,
              size: 18,
            ),
            isPass: true,
            hint: "Enter your password".tr,
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: Get.width * 0.6,
                  child: textButton(
                    name: "Forget your password?".tr,
                    underline: false,
                    onPressed: () {},
                  )),
            ],
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          primaryButton(
            title: 'SignIn'.tr,
            onPressed: () {
              Get.off(() => Home());
            },
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                fillColor: MaterialStateProperty.all<Color>(Color(0xffd9d9d9)),
                checkColor: Colors.white,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                "I agree on the ".tr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onLongPress: () {},
                child: SizedBox(
                  child: Text(
                    "Terms & Conditions".tr,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.teal[300],
                    ),
                  ),
                ),
              ),
              Text(" and".tr),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onLongPress: () {},
                child: SizedBox(
                  child: Text(
                    "Privacy Policy".tr,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.teal[300],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New to our app?".tr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              textButton(
                name: "Create an account",
                underline: true,
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
