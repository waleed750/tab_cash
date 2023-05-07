import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';

import '../../../../core/utils/app_colors.dart';

class IndicatorContainer extends StatelessWidget {
  const IndicatorContainer({super.key, required this.color});
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.width * .3,
        height: 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ));
  }
}
