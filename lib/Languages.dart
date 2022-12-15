import 'package:get/route_manager.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'SignUp': 'Sign Up',
          'SignIn': 'Sign In',
          'Email': 'Email',
          'Password': 'Password',
          "Forget your password?": "Forget your password?",
          "Enter your email": "Enter your email",
          "I agree on the ": "I agree on the ",
          "Terms & Conditions": "Terms & Conditions",
          " and": " and",
          "Privacy Policy": "Privacy Policy",
          "New to our app?": "New to our app?",
          "Create an account": "Create an account"
        },
        'ar_SA': {
          'SignUp': 'التسجيل',
          'SignIn': 'تسجيل الدخول',
          'Email': 'البريد الإلكتروني',
          'Password': 'كلمة السر',
          "Forget your password?": "هل نسيت كلمة السر؟",
          "Enter your password": "ادخل كلمة السر الخاصة بك",
          "Enter your email": "ادخل بريدك الالكتروني",
          "I agree on the ": "أنا أوافق على ",
          "Terms & Conditions": "الشروط و الأحكام ",
          " and": " و ",
          "Privacy Policy": "سياسة الخصوصية",
          "New to our app?": "هل أنت جديد على تطبيقنا؟",
          "Create an account": "أنشئ حساب جديد"
        },
      };
}
