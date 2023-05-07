import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/features/authentication/presentation/widgets/indicator_container.dart';

import '../../../../core/utils/app_colors.dart';

class PaymentCardContainer extends StatelessWidget {
  const PaymentCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: AppColors.buttonColor,
          child: Icon(
            Icons.edit_document,
            color: AppColors.backgroundColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "internet paymnet limit per month",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: AppColors.indicatorColor),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.textColor,
                ),
                child: Row(
                  children: [
                    IndicatorContainer(color: AppColors.buttonColor),
                    IndicatorContainer(color: AppColors.textColor),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "\$373.500",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.buttonColor),
                  ),
                  Text(
                    "/50000",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.defaultColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
