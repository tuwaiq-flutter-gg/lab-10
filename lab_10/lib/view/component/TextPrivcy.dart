import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Privcy extends StatelessWidget {
  const Privcy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: true,
            onChanged: (val) {
              val = true;
            }),
        Expanded(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: " I agree on the",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              TextSpan(
                  text: " Terms & condtions",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      decoration: TextDecoration.underline)),
              TextSpan(
                  text: " and",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              TextSpan(
                text: " Privcy",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    decoration: TextDecoration.underline),
              )
            ]),
          ),
        ),
      ],
    );
  }
}
