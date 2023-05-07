import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/core/utils/app_colors.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';

import '../../../../core/utils/asset_manager.dart';

class VisaCartContainer extends StatelessWidget {
  const VisaCartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * .35,
      // color: Colors.amber,
      child: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Stack(
          children: [
            Image.asset(
              AssetManager.cartImage,
            ),
            Positioned(
              bottom: context.height * .08,
              left: 15,
              child: Text(
                "3455 4562 7710 3507",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.backgroundColor),
              ),
            ),
            Positioned(
              bottom: context.height * .045,
              left: 15,
              child: Text(
                "3Card holder name",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.backgroundColor),
              ),
            ),
            Positioned(
              bottom: context.height * .015,
              left: 15,
              child: Text(
                "Ahmed Hossam",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.backgroundColor),
              ),
            ),
            Positioned(
              bottom: context.height * .045,
              right: context.width * .16,
              child: Text(
                "Expiry date",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.backgroundColor),
              ),
            ),
            Positioned(
              bottom: context.height * .015,
              right: context.width * .16,
              child: Text(
                "02/30",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.backgroundColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
