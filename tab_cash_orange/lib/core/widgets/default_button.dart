// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:tab_cash_orange/core/utils/media_extension.dart';

import '../utils/app_colors.dart';

class DefaultButton extends StatelessWidget {
  bool disabledColor;
  String text;
  final Function function;
   DefaultButton({
    
    required this.disabledColor,
    required this.text,
    required this.function,
  }) ;

  @override
  Widget build(BuildContext context) {
    var  _disabled = disabledColor;
    var _currentColor =  AppColors.buttonColor;
    return InkWell(
              onTap: () => function(),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.circular(10.0),
                  color: _currentColor
                ),
                padding: EdgeInsets.all(
                  context.topPadding * 0.1
                ),
                margin: EdgeInsets.all(
                  context.topPadding * 0.3
                ),
                child:  Center(
                      child: Text("Button" , style: TextStyle(
                        color: AppColors.backgroundColor , 
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700 , 
                        fontFamily: "Poppins",
                      ),),
                    ),
                  
                ),
            );
  }
}
