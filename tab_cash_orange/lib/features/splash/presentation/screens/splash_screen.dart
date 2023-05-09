import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tab_cash_orange/config/routes/app_routes.dart';
import 'package:tab_cash_orange/core/utils/asset_manager.dart';

import '../../../authentication/data/data_sources/local_data_source.dart';
import 'package:tab_cash_orange/injection_container.dart' as di;
class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 2 ) , () => goNext());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            
          ),
      body: Center(child: Image.asset(AssetManager.logoImage2 , fit: BoxFit.cover,)),
    );
  }

  void goNext() {
   try{
    if(di.sl<LoginDataSource>().getLoggedIn()){
            Navigator.pushNamedAndRemoveUntil(context,
           Routes.homeRoute, (route) => false);  
      }else {
     Navigator.pushNamedAndRemoveUntil(context, Routes.homeRoute ,(route) => false,);
   }
   }catch(e){
     Navigator.pushNamedAndRemoveUntil(context, Routes.loginRoute ,(route) => false,);
   }
  }
}