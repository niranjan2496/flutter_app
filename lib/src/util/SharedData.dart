

import 'dart:ffi';

import 'package:get_storage/get_storage.dart';

class SharedData{
  static late GetStorage _storage;

  static final String _BASE_URL="share url";
  static final String _TOKEN="token";
  static final String _USER="user";
  static final String _PASSWORD="password";
  static final String _AUTHORITIES="authorities";


  Future init() async {
    await GetStorage.init();
    _storage=GetStorage();
  }
  static void setBaseUrl(String baseUrl){
     _storage.write(_BASE_URL, baseUrl);
  }
  static String getBaseUrl(){
    return  _storage.read(_BASE_URL);
  }
 static void setToken(String? token){
     _storage.write(_TOKEN, "Bearer "+token!);
 }
 static String getToken(){
    return  _storage.read(_TOKEN);
 }

 static void setUser(String? user){
     _storage.write(_USER, user);
 }
 static String getUser(){
    return  _storage.read(_USER);
 }
 static void setPassword(String password){
    _storage.write(_PASSWORD, password);
 }
 static String getPassword() {
    return _storage.read(_PASSWORD);
 }

 static void setAuthorities(List<String>? authorities){
     _storage.write(_AUTHORITIES, authorities);
 }
 static List getAuthorities(){
   return _storage.read(_AUTHORITIES);
 }
 static bool isTokenExist(){
    return  _storage.hasData(_TOKEN);
 }

 static void clearData(){
     _storage.remove(_BASE_URL);
     _storage.remove(_TOKEN);
      _storage.remove(_AUTHORITIES);
     _storage.remove(_USER);
     _storage.remove(_PASSWORD);
 }

}