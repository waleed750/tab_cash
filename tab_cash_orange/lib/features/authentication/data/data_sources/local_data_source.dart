import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tab_cash_orange/core/errors/exceptions.dart';

abstract class LoginDataSource{
  Future<bool> setLoggedIn();
  bool getLoggedIn();
}
class LoginDataSourceImpl extends LoginDataSource {
  SharedPreferences sharedPreferences;
  LoginDataSourceImpl({
    required this.sharedPreferences,
  });
  @override
  Future<bool> setLoggedIn() async{
    try{
     return await sharedPreferences.setBool("LoggedIn", true);
    }catch(e){
      throw(CacheException());
     }
  }
  
  @override
  bool getLoggedIn() {
    try{
      if(sharedPreferences.getBool("LoggedIn") == null){
      throw(CacheException());
      }

     return sharedPreferences.getBool("LoggedIn")!;
    }catch(e){
      throw(CacheException());
     }
  }
}