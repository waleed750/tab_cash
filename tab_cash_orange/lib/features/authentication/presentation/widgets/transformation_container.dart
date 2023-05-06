import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/core/utils/hex_color.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
import 'package:tab_cash_orange/features/authentication/presentation/widgets/person_container.dart';

import '../../../../core/utils/app_colors.dart';

class TransformationContainer extends StatelessWidget {
  const TransformationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: context.width * .87,
        height: context.height * .16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.buttonColor, width: 1)),
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transfer to",
                  style: TextStyle(
                      fontSize: 17,
                      color: AppColors.black,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.qr_code_scanner_sharp,
                    size: 29,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: context.width * .068,
                      backgroundColor: AppColors.backgroundCartColor,
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "add",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                PersonContainer(name: "Ahmed"),
                SizedBox(
                  width: 10,
                ),
                PersonContainer(name: "Ahmed"),
                SizedBox(
                  width: 10,
                ),
                PersonContainer(name: "Ahmed"),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
