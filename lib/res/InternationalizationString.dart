

import 'package:get/get.dart';

class InternationalizationStrings extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>  {
    'en_US': {
      'sign_in': 'sign in',
      'welcome':'Welcome',
      'user_name':"User Name",
      'password':'Password',
    },
    'es_ES': {
      'sign_in': 'sign in',
      'welcome':'Welcome',
      'user_name':"User Name",
      'password':'Password',
    },
    'hi_IN': {
      'sign_in': 'प्रवेश करें',
      'welcome':'स्वागतम',
      'user_name':"यूजर नाम",
      'password':'पासवर्ड',
    }
  };

}