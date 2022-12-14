import 'package:get/get.dart';

class TranString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "changeLang":"Eng",
          "Title": "LogIn",
          "TextField1":"Email",
          "TextField2":"Password",
          "terms":"I agree on the Terms & Conditions ",
          "buttom Name":"Sign Up",
          "ForgPass":"Forgot Password"
          },

        "ar_KSA": {
          "changeLang":"عربي",
          "Title": "تسجيل دخول",
          "TextField1":"بريد الكتروني",
          "TextField2":"كلمه المرور ",
          "terms":"اوافق على الشروط والاحكام  ",
          "buttom Name":"اشتراك",
          "ForgPass":"نسيت كلمه المرور"
          }  
      };
}
