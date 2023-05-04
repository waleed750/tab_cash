// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tab_cash_orange/core/utils/app_colors.dart';

class TestScreen extends StatefulWidget {
  
  
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  var _disabled;
  @override
  void initState() {
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Test For Debug Purposes"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           
            
        ],
      ),
    );
  }
}