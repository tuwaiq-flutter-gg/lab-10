import 'package:get/get.dart';

class  Trlocal implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "L":"تسجيل الدخول",
         "w" :"مرحبا",
        "E":"البريد الاكتروني",
        "f":"نسيت كلمة السر", 
        "ef":"ادخل كلمه المرور",

        "t":"الشروط والاحكام"
        
        
        
        },
        
        "en": {
           "w" :"Welcome",
          "L":"Login", 
        "E":"Email",
        "f":"forgetPassword", 
        "ef":"Enterpassword",

        "t":"Terms&Condtions"
        
        
        
        } 
       
      };
}
