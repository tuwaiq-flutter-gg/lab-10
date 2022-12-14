import 'package:get/get.dart';

class Language extends Translations{

  Map<String, Map<String, String>> get keys => {
    "en_US":{
      "pass":"Password",
        "name":"name",
               "email":"email",
                "termCondiotn":"term & condiotn",
                              "SignUp":"SignUp",

  "forgetPass":"forget Password",
    },
   "ar_SA":{
                     "termCondiotn":"الاتفاقيات والشروط",

  "forgetPass":"نسيت كلمة المرور",
      "pass":"كلمة السر",
       "email":"بريد اليكتروني",
        "name":"الاسم",
           "SignUp":"تسجيل دخول",
   },

  };
}