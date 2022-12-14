import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:khaledalwadai/Controler/langcontrol.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _SingupState();
}

class _SingupState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    LangControler controler = Get.find();
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 64, 118, 255)),
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {
controler.langVhange("en"); 


                },
                child: Text("Engleh"),
              ),
              TextButton(
                onPressed: () {controler.langVhange("ar");
                },
                child: Text("عربي"),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 30,
                width: 150,
                child: Container(
                  color: Colors.black,
                  height: 30,
                  width: 150,
                  child: Center(
                      child: Text(
                    "w".tr,
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(192, 3, 91, 224)),
                  )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'L'.tr,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'ef'.tr,
              ),
            ),
          ),
          Container(alignment: Alignment.centerLeft, child: Text("f".tr)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Checkbox(value: false, onChanged: ((value) => true)),
                Text("t".tr)
              ],
            ),
          )
       
       ,Center(
         child: Container(
          color: Colors.blue,
          height: 34,
          width: 100,
          child: Center(child: Text("L".tr,style: TextStyle(fontSize: 18),)),),
       )
       
        ],
      ),
    );
  }
}
