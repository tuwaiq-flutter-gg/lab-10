// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:faisal_lab10/Comp/Login.dart';
import 'package:faisal_lab10/Controller/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});
  LoginController controller = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Column(
            children: [
              SizedBox(
                height: 17,
              ),
              Text(
                "1".tr,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset("images/undraw_cabin_hkfr 1.png"),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Login(),
        ],
      ),
    );
  }
}
