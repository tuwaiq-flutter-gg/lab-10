import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                   Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 12,
                     ),
                  child: Container
                  (
                    width: Get.width,
                    child: FittedBox(
                      fit:BoxFit.scaleDown,
                      child: Text("name".tr))),
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
                     ),
                  child: Container
                  (
                    width: Get.width,
                    child: FittedBox(
                      fit:BoxFit.scaleDown,
                      child: Text("email".tr))),
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
                     ),
                  child: Container
                  (
                    width: Get.width,
                    child: FittedBox(
                      fit:BoxFit.scaleDown,
                      child: Text("pass".tr))),
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
              child:
                  Column(
                    children: [
                    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                       
                           TextButton(onPressed: () {}, child: Text("termCondiotn".tr)),
                           
                        ],
                      ),
                        Row(
                        children: [
                         
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
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      
                        backgroundColor: Color.fromARGB(255, 71, 73, 226)),
                    onPressed: () {},
                    child: Center(
                        child: Text("forgetPass".tr,
                            style:
                                TextStyle(fontSize: 30,
                                
                                
                                 color: Colors.black)))),
                 ],
               ),
                  
          ],
        ));
  }
}