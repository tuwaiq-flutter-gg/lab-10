import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rahaf_lab10/Translations/language.dart';
import 'package:rahaf_lab10/view/chooseSign.dart';
import 'package:rahaf_lab10/view/login.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: chooseSign(),
      supportedLocales: languages.all,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
     
    );
  }
}
