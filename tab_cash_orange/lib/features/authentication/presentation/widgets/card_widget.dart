import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash_orange/config/localization/app_localizations.dart';
import 'package:tab_cash_orange/core/utils/icon_manager.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';

import '../../../../core/utils/hex_color.dart';

Widget cardWidget(BuildContext context , {
  required Color color ,
   String iconPath = IconManager.shoppingIcon, 
   String title = 'Shopping', 
   int expenses = 500,
   double percent = 24.6,
}) => Expanded(
      child: Container(
        height: context.height * 0.17,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        padding: EdgeInsets.symmetric(
          horizontal: context.topPadding / 4 , 
          vertical: context.topPadding / 2 ,
          ),
        decoration: BoxDecoration(color: color , 
        borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start , 
          children: [
          SvgPicture.asset(
            iconPath ,
            fit: BoxFit.fitHeight,
            ) , 
          const SizedBox(height: 5.0,),
          FittedBox(
            child: Text("${AppLocalizations.of(context)!.translate(title)??title}" , style: const TextStyle(
              fontSize: 14.0 , fontWeight: FontWeight.bold ,
            ),),
          ),
          const SizedBox(height: 5.0,),
          Text("\$$expenses" , style: const TextStyle(
            fontSize: 20.0 , fontWeight: FontWeight.bold ,
            overflow: TextOverflow.ellipsis
          ),),
          Spacer(),
          Text("$percent\%" , style: const TextStyle(
            fontSize: 12.0 , fontWeight: FontWeight.bold ,
            overflow: TextOverflow.ellipsis
          ),),
        ]),
      ),
    );
