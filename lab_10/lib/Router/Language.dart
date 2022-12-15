import 'package:get/get.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "Lchange":"العربية",
          "logIn_H1": "logIn",
          "email": "Email",
          "Pass": "Password",
          "Rpass": "Re-Password",
          "Agree": "Agree to the terms and conditions",
          "Fpass": "Forgot Password?"
        },
        "ar_SA": {
          "Lchange":"English",
          "logIn_H1": "تسجيل الدخول",
          "email": "البريد الألكتروني",
          "Pass": "كلمة المرور",
          "Rpass": "اعادة كلمة المرور",
          "Agree": "الموافقة على الشروط و الاحكام",
          "Fpass": "نسيت كلمة المرور؟"
        }
      };
}
