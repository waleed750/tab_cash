import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tab_cash_orange/config/routes/app_routes.dart';
import 'package:tab_cash_orange/core/utils/asset_manager.dart';

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
      body: Center(child: Image.asset(AssetManager.logoImage)),
    );
  }

  void goNext() => Navigator.pushReplacementNamed(context, Routes.homeRoute);
}