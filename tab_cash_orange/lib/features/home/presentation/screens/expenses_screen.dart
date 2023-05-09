import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/config/localization/app_localizations.dart';
import 'package:tab_cash_orange/core/utils/app_strings.dart';
import 'package:tab_cash_orange/core/utils/hex_color.dart';
import 'package:tab_cash_orange/core/utils/icon_manager.dart';
import 'package:tab_cash_orange/features/expenses/expenses_widget.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
import 'package:tab_cash_orange/features/expenses/history_widget.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../core/utils/app_colors.dart';
import 'package:intl/intl.dart';


import '../cubit/expenses/cubit/expenses_cubit.dart';
import '../cubit/expenses/cubit/expenses_states.dart';
import '../widgets/card_widget.dart';
import '../widgets/switch_button.dart';

class ExpensesScreen extends StatelessWidget {
  ExpensesScreen();
  

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExpensesCubit, ExpensesState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        var cubit = BlocProvider.of<ExpensesCubit>(context);
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              AppLocalizations.of(context)!
                  .translate(AppStrings.expensesTitle)!,
              style: TextStyle(color: AppColors.black),
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              
              children: [
                //!================================  Calender Button Start
                InkWell(
                  onTap: () async{
                    await cubit.changeMonth(context);
                  },
                  child: Container(
                    width: context.width / 1.9,
                    decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    margin: EdgeInsets.only(
                      top: context.height * 0.02 , bottom: context.height * 0.04,
                      left: context.width * 0.04 , right: context.width * 0.04,
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: context.width * 0.02,
                        vertical: context.height * 0.007),
                    child: Row(
                      children: [
                        Icon(
                          Icons.date_range_outlined,
                          size: 30,
                          color: HexColor("FFFFFF"),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '${cubit.selectedDateString }',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
          
                /**
                showTimePicker(context: context,
                                        initialTime: TimeOfDay.now()).then((value) {
                                          timeController.text = value!.format(context);
                                          return null;
                                  });
                */
                //!================================ Calender Button Ends
                const SizedBox(
                  height: 15.0,
                ),
                DonutChartExample(montySelected: cubit.selectedDateString.split(' ')[0]),
                const SizedBox(
                  height: 15.0,
                ),
                switchButton(context),
                //!!!!!!!!!!!!!!!!!! Cards 
                if(cubit.labelIndex == 0 )...[
                    Container(
                  margin: EdgeInsets.symmetric(
                          horizontal: context.width * 0.04 ,
                          vertical: context.height * 0.02
                        ),
                  child: Row(
                    children: [
                     cardWidget(context,
                      color: HexColor('FD95D3') ,
                      
                      ),
                      cardWidget(context,
                      title: AppStrings.sendToCard,
                      color: HexColor('7AD3FF'),
                      expenses: 400 ,
                      iconPath: IconManager.cardIcon,

                      ),
                      cardWidget(context,
                      title: AppStrings.games,
                      iconPath: IconManager.games_2Icon,
                      expenses: 500,
                      color: HexColor('FE6C6C')),
                      
                    ],
                  ),
                ),
                 Container(
                  margin: EdgeInsets.symmetric(
                          horizontal: context.width * 0.04 ,
                          
                        ),
                  child: Row(
                    children: [
                     cardWidget(context,
                      color: HexColor('FDCD95') ,
                      title: AppStrings.paymentOfBills , 
                      iconPath: IconManager.billsIcon
                      ),
                      cardWidget(context,
                      title: AppStrings.atmWithDrawal,
                      color: HexColor('FFF972'),
                      expenses: 400 ,
                      iconPath: IconManager.atmIcon,
                      ),
                      cardWidget(context,
                      title: AppStrings.shipping,
                      iconPath: IconManager.shippingIcon,
                      expenses: 500,
                      color: HexColor('99FFA3')),
                      
                    ],
                  ),
                ),
                ]
                
                //!!!!!!!!!!!!!!!!!! History 
                else if(cubit.labelIndex == 1)...[
                  
                  SizedBox(
                    height: 20.0,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 12.0
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Today' , 
                          style: TextStyle(
                            fontSize: 16.0
                          ),
                          ),
                           Icon(
                           Icons.search ,
                           color: Colors.grey, 
                          ),
                      ]),
                    ),
                  ),

                  HistoryWidget(
                    expenses: 14.91,
                    icon: Icons.shopping_bag_outlined,
                     title: "Shopping",
                      subTitle: 'August 14 - 02:50 pm'),
                  HistoryWidget(
                    expenses: 85.84,
                    icon: Icons.local_movies,
                     title: "Movie",
                      subTitle: 'August 14 - 02:50 pm'),
                     HistoryWidget(
                    expenses: 60.89,
                    received: true,
                    icon: Icons.local_movies,
                    title: "Transfer from Waleed",
                    subTitle: 'August 14 - 02:50 pm'),
                ] , 

              ],
            ),
          ),
        );
      },
    );
  }
}
