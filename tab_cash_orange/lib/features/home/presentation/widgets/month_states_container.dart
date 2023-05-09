import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';

import '../../../../core/utils/app_colors.dart';

class MonthStatesContainer extends StatelessWidget {
  const MonthStatesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * .46,
      height: context.height * .14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.buttonColor),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "August savings",
                  style: TextStyle(color: AppColors.indicatorColor),
                ),
                Icon(
                  Icons.more_horiz,
                  color: AppColors.indicatorColor,
                  size: 27,
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "\$18,836.00",
              style: TextStyle(
                  color: AppColors.buttonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.buttonColor,
                  child: Icon(
                    Icons.arrow_outward_outlined,
                    color: AppColors.backgroundColor,
                    size: 20,
                  ),
                ),
                Text(
                  "+12%",
                  style: TextStyle(
                    color: AppColors.buttonColor,
                    fontSize: 13,
                  ),
                ),
                Text(
                  "more than July",
                  style: TextStyle(
                    color: AppColors.indicatorColor,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
