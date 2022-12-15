import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rakan_lab10/controllers/singinController.dart';
import 'package:rakan_lab10/views/components/MainTextField.dart';

Locale Local_Lang = const Locale("ar", "SA");

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  signinController c_signinController = Get.put(signinController());
  @override
  Widget build(BuildContext context) {
    bool? checkValue = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login".tr),
        actions: [
          IconButton(
              onPressed: () {
                if (Local_Lang.languageCode == "ar") {
                  Local_Lang = const Locale("en", "US");
                } else {
                  Local_Lang = const Locale("ar", "SA");
                }
                Get.updateLocale(Local_Lang);
              },
              icon: const Icon(Icons.language))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainTextField(hintText: "User Name".tr),
            const SizedBox(height: 10),
            MainTextField(hintText: "Password".tr),
            const SizedBox(height: 20),
            Row(
              children: [
                GetBuilder<signinController>(
                  builder: (_) => Checkbox(
                    value: c_signinController.checkValue,
                    onChanged: (_) => c_signinController.changeCheckValue(),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Terms & Conditions".tr),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(Get.width, 50),
              ),
              child: Text("Login".tr),
            ),
          ],
        ),
      ),
    );
  }
}
