import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_lab10/Local-Lang/translation_keys.dart' as translation;
import 'package:shatha_lab10/components/text_feild.dart';
import 'package:shatha_lab10/controller/language_controller.dart';
import 'package:shatha_lab10/controller/sign_up_controller.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final myController = SignUpController();

  @override
  Widget build(BuildContext context) {
    LanguageController langController = Get.find();
    print('device lang: ');
    print(langController.currentLang);
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Center(
            child: Text(
              translation.signup.tr,
              style: TextStyle(
                color: Color.fromARGB(255, 62, 62, 95),
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),
            ),
          ),

          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                CustomTextFeild(title: translation.name.tr, mytextController: myController.nameController),
                CustomTextFeild(title: translation.email.tr, mytextController: myController.emailController),
                CustomTextFeild(title: translation.password.tr, mytextController: myController.passwordController),

                
              ],
            ),
          ),

          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Checkbox(value: myController.PolicyCheck, onChanged: (value) {
                    myController.PolicyCheck = !myController.PolicyCheck ;
                    myController.update() ;
                    
                  },),
                  
                  
                  SizedBox(
                    width: 250,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                      text: translation.privcy1.tr,
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: translation.privcy2.tr , style: TextStyle(color: Color.fromARGB(255, 86, 100, 180) , decoration: TextDecoration.underline)),
                        TextSpan(text: translation.privcy3.tr),
                        TextSpan(text: translation.privcy4.tr , style: TextStyle(color: Color.fromARGB(255, 86, 100, 180) , decoration: TextDecoration.underline))
                      ]
                    )),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () => {
                
              } , 
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 86, 100, 180)
              ),
              child: Text(translation.signup.tr, style: TextStyle(color: Colors.black),)
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: translation.forget.tr , style: TextStyle(color: Color.fromARGB(255, 86, 100, 180) , decoration: TextDecoration.underline))]
            ),
          ),

          TextButton(
            onPressed: () { 
              langController.changeLanguage(translation.lang.tr);

            },
            child: Text(translation.changeTo.tr),
          ),
          
        ],
      ),
    );
  }
}