import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';

import '../../../../core/utils/app_colors.dart';


import '../cubit/authentication_cubit.dart';
class CardItemContainer extends StatelessWidget {
   CardItemContainer({
    super.key,
    required this.icon,
    required this.title,
    this.subTitle,
    this.notif ,
    });
  final icon ;
  final title ;
  final String ?subTitle ;
  final bool? notif ;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<Home2Cubit>(context);
    return BlocListener<Home2Cubit, Home2State>(
      listener: (BuildContext context, state) {},
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: AppColors.buttonColor,
                    child: Icon(
                      icon,
                      color: AppColors.backgroundColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: subTitle == null ?
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${title}",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: AppColors.defaultColor),
                          ),
                         
                        ])
                    :
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${title}",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: AppColors.defaultColor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${subTitle}",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.indicatorColor),
                          ),
                        ]),
                  ),
                ],
              ),
              notif !=null ?
              Container(
            child: FlutterSwitch(
              width: context.width *.18,
              height: context.width *.075,
              valueFontSize: 17.0,
              toggleSize: 18.0,
              value: cubit.notif_status,
              borderRadius: 20.0,
              activeColor: AppColors.buttonColor,
              activeTextColor: AppColors.backgroundColor,
              padding: 2.0,
              showOnOff: true,
              onToggle: (val) {
               cubit.changeNotificationStatus();
              },
          
          )
              )
              :
              Icon(
                Icons.arrow_forward,
                size: 27,
                color: AppColors.black,
              ),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
