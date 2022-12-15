import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Center(
              child: Text(
                "SignUp".tr,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 62, 36, 207)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 12,
                      left: MediaQuery.of(context).size.width / 8),
                  child: Text("email".tr),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 8,
                      left: MediaQuery.of(context).size.width / 8),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(66, 228, 126, 241),

                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 12,
                      left: MediaQuery.of(context).size.width / 8),
                  child: Text("pass".tr),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 8,
                      left: MediaQuery.of(context).size.width / 8),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(66, 228, 126, 241),

                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 55),
                    child: Checkbox(
                      value: false,
                      onChanged: (bool) {},
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 0,
                      ),
                      Row(
                        children: [
                          Text("agree".tr),
                           TextButton(onPressed: () {}, child: Text("terms".tr)),
                            Text("and".tr),
                         TextButton(onPressed: () {}, child: Text("Privacy".tr)),
                        ],
                      ),
                        Row(
                        children: [

                        ],
                      ),
                    ],
                  ),


                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width/20, bottom:MediaQuery.of(context).size.width/30 ),
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 4,
                  left: MediaQuery.of(context).size.width / 4),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(

                        backgroundColor: Color.fromARGB(255, 71, 73, 226)),
                    onPressed: () {},
                    child: Center(
                        child: Text("SignUp".tr,
                            style:
                                TextStyle(fontSize: 30,


                                 color: Colors.black)))),
              ),
            ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("agree".tr),
                   TextButton(onPressed: () {}, child: Text("terms".tr)),
                 ],
               ),

          ],
        ));
  }
}