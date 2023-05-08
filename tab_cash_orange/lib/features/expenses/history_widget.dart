import 'package:flutter/material.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';

import '../../core/utils/app_colors.dart';

class HistoryWidget extends StatelessWidget {
  double expenses;
  
  bool received ;

  
  HistoryWidget({
required this.icon,
    required this.title,
    required this.subTitle,
    required this.expenses , 
    this.received = false , 
  });

  IconData icon ; 
  String title;
  String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container
    (
      
      padding: EdgeInsets.all(context.width * 0.03),
      margin: EdgeInsetsDirectional.only(
          start:  context.height * 0.009  ,end:  context.height * 0.009  , 
        top:  context.height * 0.009  ,bottom:  context.width * 0.002 
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(width: 1 , color: Colors.black.withOpacity(.2)) , 
        boxShadow: [
          BoxShadow(
             color: Colors.grey[300]!,
                blurRadius: 10.0,
                offset: Offset(0.0, 6)
            
          )          
        ]
      ),
      child: Container(
        

        child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: AppColors.buttonColor,
                        child: Icon(
                          icon,
                          color: AppColors.backgroundColor,
                          size: 22,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: subTitle == null ?
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  "${title}",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.defaultColor),
                                ),
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
                              const SizedBox(
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
                    
                    ]
                    ),
                    //!  Expensses
                    FittedBox(
                     child: Text('\$$expenses' ,
                      style:  TextStyle(
                        fontSize: 16.0 ,
                        color: received ? Colors.green : Colors.red, 
                        fontWeight: FontWeight.w500 ,
                        letterSpacing: 0.03
                      ),
                     ),
                   ),
                    ]
                   
        ),
      ),
    );
              

  }
}