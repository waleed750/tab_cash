import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash_orange/core/utils/app_colors.dart';
import 'package:tab_cash_orange/core/utils/asset_manager.dart';
import 'package:tab_cash_orange/core/utils/icon_manager.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
import 'package:tab_cash_orange/features/home/presentation/cubit/home_cubit.dart';
// import 'package:tab_cash_orange/core/utils/AppColors.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../expenses/history_widget.dart';
import '../widgets/add_new_card_container.dart';
import '../widgets/circle_dot.dart';
import '../widgets/feature_container.dart';
import '../widgets/month_states_container.dart';
import '../widgets/person_container.dart';
import '../widgets/search_container.dart';
import '../widgets/search_form_field.dart';
import '../widgets/transformation_container.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<HomeCubit>(context);
    return BlocListener<HomeCubit, Homestates>(
      listener: (BuildContext context, state) {},
      child: Scaffold(
        backgroundColor: AppColors.buttonColor,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.buttonColor,
          ),
          backgroundColor: AppColors.buttonColor,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: context.height * .3095,
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    SearchContainer(searchController: searchController),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.width * .03),
                      child: Text(
                        "Balance Account",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.backgroundColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ 34.60",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textColor,
                            ),
                          ),
                          Center(
                            child: Text(
                              "\$ 2934.60",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: AppColors.backgroundColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            "\$ 29",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: context.height * .035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleDotContainer(
                          color: AppColors.textColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleDotContainer(
                          color: AppColors.backgroundColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleDotContainer(
                          color: AppColors.textColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: context.height * .51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: AppColors.backgroundColor,
                ),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: context.height * .03,
                              left: context.height * .02),
                          child: Text(
                            "Features",
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                         Padding(
                           padding:  EdgeInsets.only(left: context.width*.05),
                           child: SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                             child: Row(
                               children: 
                               [
                                 FeatureContainer(icon: IconManager.atmIconHome ,name: "ATM withdrawal",),
                                 SizedBox(width: 10,),
                                 FeatureContainer(icon: IconManager.familyIcon ,name: "TabCash Kips",),
                                 SizedBox(width: 10,),
                                 FeatureContainer(icon: IconManager.gamesIconHome ,name: "Games",),
                                 SizedBox(width: 10,),
                                 FeatureContainer(icon: IconManager.switchIcon ,name: "Send menoy ",),
                               ],
                             ),
                           ),
                         ),
                         SizedBox(height: context.height *.03,),
                        const TransformationContainer(),
                        const SizedBox(
                          height: 10,
                        ),
                        const AddNewCardContainer(),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 5, left: context.height * .03),
                          child: Text(
                            "Monthly stats",
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding:  EdgeInsets.only(left: context.width*.07,top: 5),
                            child: Row(
                              children: 
                              [
                               MonthStatesContainer(),
                               SizedBox(width: 10,),
                               MonthStatesContainer(),
                              ],
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding:  EdgeInsets.only(top: 5, left: context.height * .03,right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: 
                            [
                               Text(
                                "August transactions",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
        
                              Text(
                                "View all",
                                style: TextStyle(
                                    color: AppColors.buttonColor,
                                    fontSize: 16,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
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
                    SizedBox(height: 5.0,)
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
