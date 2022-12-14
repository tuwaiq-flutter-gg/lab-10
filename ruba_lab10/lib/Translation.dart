import 'package:get/get.dart';

class translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "Language":"English",
          "Title": "SignUp",
          "Username":"Enter User Name",
          "email":"Enter Email",
          "password":"Enter Password",
          "Conpassword":"Confirm Password",
          "Conditions":"I agree on the Terms & Conditions ",
          "Signbuttom":"Sign Up",
          "ForgetPass":"Forgot Password?"
          },

        "ar_SA": {
          "Language":"اللغة العربيه ",
          "Title": "تسجيل ألدخول",
          "Username":"أدخل اسم المستخدم ",
          "email":"ادخل البريد الالكترني",
          "password":"ادخل كلمة المرور",
          "Conpassword":"تاكيد كلمة المرور",
          "Conditions":"اوافق على الشروط والاحكام ",
          "Signbuttom":"تسجيل الدخول ",
          "ForgetPass":"هل نسيت كلمة المرور؟"
          }  
      };
}