// import 'dart:mat
// import 'package:lab11_me/homepage.dart';h';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab11_me/LocalLang/localLanguages.dart';
import 'package:lab11_me/components/buttons.dart';
import 'package:lab11_me/components/texts.dart';

class signinPage extends StatelessWidget {
  const signinPage({super.key});

  @override
  Widget build(BuildContext context) {
    local();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 22,
      ),
      body:
          //  local(),
      

          ListView(
        children: [
          SizedBox(
            height: 22,
          ),
          Container(
            padding: EdgeInsets.all(21),
            height: Get.mediaQuery.size.height / 5,
            width: Get.mediaQuery.size.width / 3,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(93)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: Image.asset(
                  "images/10.png",
                  fit: BoxFit.fill,
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          const textTitle(texTitle: "Sign in"),
          textfilds(
            titlee: "Username",
          ),
          textfilds(
            titlee: "Password",
            passAsStars: true,
          ),
          buttons(
            buttonCaption: "sign in",
            pageOff: "homeMenue",
          ),

          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: InkWell(
              child: textNormal(
                textnormal:
                    "Forgot Password?\n\f\r\r\r\r               sign Up",
              ),

              // onTap: () =>Get.to(()=> signUpPage())
            ),
          )

          //          onTap: () {  Get.off(()=> homeMenue()); )
          //buttons(buttonCaption: buttonCaption)
        ],
      ),
    );
  }
}
