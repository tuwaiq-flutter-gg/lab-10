import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lap10/singin.dart';

class Signup extends StatelessWidget {
const Signup({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
body: SafeArea(
child: ListView(
scrollDirection: Axis.vertical,
children: [
Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [

Container(
padding: EdgeInsets.only(left: 13, right: 13),
child: Center(
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Text(
          'nof1'.tr,
          style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.w900),
        ),
      ),
    ),
    Container(
      padding: EdgeInsets.only(left: 25),
      margin: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffECF0F1),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'nof2'.tr,
          hintStyle: TextStyle(fontSize: 15),
        ),
      ),
    ),
    Container(
      padding: EdgeInsets.only(left: 25),
      margin: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffECF0F1),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'nof3'.tr,
          hintStyle: TextStyle(fontSize: 15),
        ),
      ),
    ),
    Container(
      padding: EdgeInsets.only(left: 25),
      margin: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffECF0F1),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'nof4'.tr,
          hintStyle: TextStyle(fontSize: 15),
        ),
      ),
    ),
    InkWell(
      onTap: () {
  Navigator.push(context,
      MaterialPageRoute(builder: ((context) => signin())));
}, 
                                child: Container(
        margin: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'nof5'.tr,
            style: TextStyle(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.w800),
          ),
        ),
      ),
    ),
    Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => signin())));
            },
            child: Text('nof5'.tr),
          ),
        ],
      ),
    ),
  ],
),
),
)
],
),
],
),
),
);
}
}
