import 'package:faisal_lab10/Controller/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({super.key});
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "2".tr,
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w400),
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 4)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 4),
                ),
                filled: true,
                hintText: "3".tr,
                fillColor: Color.fromARGB(255, 221, 224, 254)),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            '4'.tr,
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w400),
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 4)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 4),
                ),
                filled: true,
                hintText: "5".tr,
                fillColor: Color.fromARGB(255, 221, 224, 254)),
          ),
          TextButton(
              onPressed: () {},
              child: Text("6".tr),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 166, 171, 180))),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              GetBuilder<LoginController>(
                builder: (_) {
                  return Checkbox(
                      value: controller.chek,
                      onChanged: (chek) {
                        controller.chek = chek!;
                        controller.update();
                      });
                },
              ),
              Text("7".tr),
            ],
          ),
          Row(
            children: [
              TextButton(child: Text("10".tr), onPressed: () {}),
            ],
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 40)),
                  child: Text("8".tr))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    controller.convertLanguage();
                  },
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 40)),
                  child: Text("9".tr))),
        ],
      ),
    );
  }
}
