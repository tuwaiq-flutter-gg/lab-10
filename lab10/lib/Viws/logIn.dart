




import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/state_manager.dart';

import 'package:lab10/combonet/Texst.dart';
import 'package:lab10/lokal/lokalController.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 40, 40),
      body: Column(children: [

        SizedBox(height:50),
          TextButton(onPressed: (() {
            controllerLang.changetLang("ar");
          }),
           child:Text("5".tr,style: TextStyle(fontSize: 30,color: Colors.white),)),
             
                   //SizedBox(height:100),
                 Center(
                   child: ClipRRect(child:Image.asset("images/image1.png",
                   height: MediaQuery.of(context).size.height/2,width: MediaQuery.of(context).size.width,),borderRadius:
                    BorderRadius.circular(16), ),
                 ),
                  SizedBox(height:10 ,),
                   Text("1"
                   .tr,style:
                    TextStyle(fontSize: 30,color: Colors.white),),
                   SizedBox(height:20 ),
                  Texst(texst: '3'.tr, hintText: '3'.tr,),
                  SizedBox(height:30 ,),
                  Texst(texst: '4'.tr, hintText: '4'.tr,),
                  SizedBox(height:30 ,),
                TextButton(onPressed: (() {
                  
                }), child: Text("2".tr,style: TextStyle(fontSize: 20),),
                style: TextButton.styleFrom(primary:
                 Color.fromARGB(255, 255, 253, 253),padding:
                   EdgeInsets.symmetric(horizontal: 130,vertical: 15),
                   shape: RoundedRectangleBorder
                   (borderRadius: BorderRadius.circular(25))),)










      ],),



    );
  }
}