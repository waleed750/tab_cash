import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash_orange/core/utils/app_colors.dart';
import 'package:tab_cash_orange/core/utils/asset_manager.dart';
import 'package:tab_cash_orange/core/utils/icon_manager.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
// import 'package:tab_cash_orange/core/utils/AppColors.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/hex_color.dart';
import '../widgets/add_new_card_container.dart';
import '../widgets/circle_dot.dart';
import '../widgets/person_container.dart';
import '../widgets/search_container.dart';
import '../widgets/search_form_field.dart';
import '../widgets/transformation_container.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AuthenticationCubit>(context);
    return BlocListener<AuthenticationCubit, AuthenticationState>(
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
                      height: 20,
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
                height: context.height * .5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: AppColors.backgroundColor,
                ),
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
                      SizedBox(
                        height: context.height * .12,
                      ),
                      const TransformationContainer(),
                      const SizedBox(
                        height: 10,
                      ),
                      const AddNewCardContainer(),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 5, left: context.height * .02),
                        child: Text(
                          "Monthly stats",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
