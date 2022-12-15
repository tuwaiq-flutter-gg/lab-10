import 'package:get/get.dart';

class Language extends Translations {
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "pass": "Password",
          "name": "name",
          "email": "E-mail",
          "terms": "Terms & Conditions",
          "SignUp": "Sign Up",
          "forgetPass": "forget Password",
          "agree": "I agree on the",
          "and": "and",
          "Privacy": "Privacy Policy"
        },
        "ar_SA": {
          "terms": "الاتفاقيات والشروط",
          "forgetPass": "نسيت كلمة المرور",
          "pass": "الرمز السري",
          "email": "البريد الالكتروني",
          "name": "الاسم",
          "SignUp": "تسجيل الدخول",
          "agree": "انني اتفق على",
          "and": "وعلى",
          "Privacy": "سياسة الخصوصية"
        },
      };
}
