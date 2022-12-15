import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahaf_lab10/components/loginChoices.dart';
import 'package:rahaf_lab10/view/login.dart';

class chooseSign extends StatelessWidget {
  const chooseSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 221, 210, 214),
      body: Stack(
        children: [
          Image(
            image: NetworkImage("images/bg.png"),
            height: Get.height,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "images/logo1.png",
                height: Get.height / 4,
                width: Get.width / 4,
              ),
              logIn(),
              Text("____________________ Or ____________________"),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        loginChoices(
                            image: "images/Facebook.png",
                            text: "Facebook".tr),
                        loginChoices(
                            image: "images/Apple.png",
                            text: "Apple".tr),
                        loginChoices(
                            image: "images/Google.png",
                            text: "Google".tr)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("you don't have account?"),
                  TextButton(onPressed: () {}, child: Text("Sign Up".tr))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
