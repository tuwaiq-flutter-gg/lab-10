import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:lab_10/Comp/Custom%20Button.dart';
import 'package:lab_10/Comp/Custom%20TextFiled.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> {
  bool checked = false;
  var isLang = Locale("en", "US");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(children: [
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Text(
                  "logIn_H1".tr,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      if (isLang == Locale("en", "US")) {
                        Get.updateLocale(Locale("ar", "SA"));
                        isLang = Locale("ar", "SA");
                      } else {
                        Get.updateLocale(Locale("en", "US"));
                        isLang = Locale("en", "US");
                      }
                    },
                    child: Text("Lchange".tr),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            //Text("email".tr),

            CustomTextFiled(title: "email".tr, textFiledIcon: Icon(null)),

            SizedBox(
              height: 20,
            ),
            CustomTextFiled(title: "Pass".tr, textFiledIcon: Icon(null)),
            SizedBox(
              height: 20,
            ),
            // CustomTextFiled(title: "Re-Password", textFiledIcon: Icon(null)),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Checkbox(
                    value: this.checked,
                    onChanged: (bool? checked) {
                      setState(() {
                        this.checked = checked!;
                      });
                    }),
                InkWell(onTap: () {}, child: Text("Agree".tr)),
              ],
            ),
            Container(
              child: CustomButton(
                background: Colors.orange,
                buttnIcon: Icon(
                  Icons.navigate_next,
                  color: Colors.blue,
                ),
                title: "logIn_H1".tr,
                onPressed: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.centerRight,
                  child: Text("Fpass".tr)),
            ),
          ]),
        ),
      ),
    ));
  }
}
