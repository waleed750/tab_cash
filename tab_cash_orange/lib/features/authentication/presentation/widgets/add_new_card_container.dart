import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/core/utils/asset_manager.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';

import '../../../../core/utils/app_colors.dart';

class AddNewCardContainer extends StatelessWidget {
  const AddNewCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: context.width * .87,
        height: context.height * .1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                AppColors.secondColor,
                AppColors.buttonColor,
              ],
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add New Card",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: AppColors.backgroundColor),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "You can add new card to\nTapCash in a minute",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: context.width * .1),
                child: Image.asset(AssetManager.visaImage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
