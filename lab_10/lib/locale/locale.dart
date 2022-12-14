import 'package:get/route_manager.dart';

class MyLanguage implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": " إنشاء حساب",
          "2": " الأسم",
          "3": " الإميل",
          "4": " كلمة المرور",
          "5": "؟هل نسيت كلمة المرور",
          "6": " التسجبل",
          "7": "تغيير اللغة"
        },
        "en": {
          "1": " Create Acconte",
          "2": " Name",
          "3": " Email",
          "4": " Password",
          "5": " Forget Passeord?",
          "6": " Sing ْUp",
          "7": " Change language"
        }
      };
}
