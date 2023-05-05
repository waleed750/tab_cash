import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';

import '../../../../core/utils/hex_color.dart';

class PersonContainer extends StatelessWidget {
   PersonContainer({super.key, required this.name});
   final String name ;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
        radius: context.width * .068,
        backgroundColor: HexColor("#C67D69"),
        child: Image.asset("assets/images/person.png"),
      ),
      SizedBox(
        height: 2,
      ),
      Text(
        "${name}",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ]);
  }
}
