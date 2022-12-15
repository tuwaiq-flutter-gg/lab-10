import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "User Name": "User Name",
          "Password": "Password",
          "Terms & Conditions": "Terms & conditions",
          "Login": "Login",
        },
        "ar_SA": {
          "User Name": "اسم المستخدم",
          "Password": "كلمة المرور",
          "Terms & Conditions": "الشروط و الأحكام",
          "Login": "تسجيل الدخول",
        }
      };
}
