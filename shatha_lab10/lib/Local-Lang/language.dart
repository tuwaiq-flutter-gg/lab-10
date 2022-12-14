import 'package:get/get.dart';
import 'package:shatha_lab10/Local-Lang/ar.dart';
import 'package:shatha_lab10/Local-Lang/en.dart';

class Languages implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": En().languages,
        "Ar": Ar().languages,
      };
}