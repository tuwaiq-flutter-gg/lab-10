import 'package:flutter/material.dart';
import 'package:rahaf_lab10/components/customButton.dart';
import 'package:rahaf_lab10/components/customTextFiled.dart';

class logIn extends StatelessWidget {
  const logIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 13, right: 13),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    custTextField(
                      text: 'Username',
                    ),
                    custTextField(
                      text: 'Password',
                    ),
                    custButton(
                      text: 'Sign in',
                      press: () {
                        
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
