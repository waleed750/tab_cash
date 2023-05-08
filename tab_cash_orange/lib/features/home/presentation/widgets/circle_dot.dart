import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/core/utils/hex_color.dart';

class CircleDotContainer extends StatelessWidget {
  const CircleDotContainer({super.key , required this.color});
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7,
      height: 7,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color),
    );
  }
}