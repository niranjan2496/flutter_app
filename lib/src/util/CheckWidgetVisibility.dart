

import 'package:flutter_app/src/util/ConstantsUtil.dart';
import 'package:flutter_app/src/util/SharedData.dart';
import 'package:get_storage/get_storage.dart';

class CheckWidgetVisibility{
  static List? authoritiesList=SharedData.getAuthorities();
  static bool isAllAuthoritiesExist(List<String> authorities){
    print("save Authorities----$authoritiesList");
    for(String authority in authorities){
      if(!authoritiesList!.contains(authority)){
        return false;
      }
    }
    return true;
  }

  static bool isNoAccessAuthorityExist(List<String> authorities){
    for(String authority in authorities){
      if(authoritiesList!.contains(authority)){
        return false;
      }
    }
    return true;
  }
}