import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/icon_manager.dart';

class FeatureContainer extends StatelessWidget {
  const FeatureContainer({super.key , required this.icon, required this.name});
  final icon ;
  final name ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: AppColors.buttonColor,//
          child: Image.asset(icon),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${name}",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.black),
        ),
      ],
    );
  }
}
