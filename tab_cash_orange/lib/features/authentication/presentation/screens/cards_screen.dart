import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
import 'package:tab_cash_orange/features/authentication/presentation/widgets/visa_cart_container.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/icon_manager.dart';
import '../cubit/authentication_cubit.dart';
import '../widgets/card_item_container.dart';
import '../widgets/indicator_container.dart';
import '../widgets/payment_card_container.dart';
import '../widgets/search_container.dart';
import 'package:tab_cash_orange/core/utils/asset_manager.dart';
class CardsScreen extends StatelessWidget {
  CardsScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<Home2Cubit>(context);
    return BlocListener<Home2Cubit, Home2State>(
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
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: context.height * .29,
                      decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                      ),
                      child: Column(children: [
                        const SizedBox(
                          height: 18,
                        ),
                        SearchContainer(searchController: searchController),
                        const SizedBox(height: 20),
                      ]),
                    ),
                    Container(
                      width: double.infinity,
                      height: context.height * .52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(28),
                            topRight: Radius.circular(28)),
                        color: AppColors.backgroundColor,
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: context.height * .1,
                              left: context.width * .05,
                              right: context.width * .05),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PaymentCardContainer(),
                                SizedBox(
                                  height: 10,
                                ),
                                CardItemContainer(
                                  icon: Icons.add_card_outlined,
                                  title: "get a new card ",
                                  subTitle: "Use a new card",
                                ),
                                CardItemContainer(
                                  icon: Icons.store,
                                  title: "stores ",
                                  subTitle: "See the stores near you",
                                ),
                                CardItemContainer(
                                  icon: Icons.info_outline,
                                  title: "details card ",
                                  subTitle: "Validity / duration of use",
                                ),
                                CardItemContainer(
                                  icon: Icons.diversity_3_rounded,
                                  title: "Family Wallet ",
                                  subTitle: "Create and delete your family card",
                                ),
                                CardItemContainer(
                                  icon: Icons.lock,
                                  title: "PIN Code",
                                  subTitle: "change card PIN Code",
                                ),
                                CardItemContainer(
                                  icon: Icons.notifications_none,
                                  title: "Notifications",
                                  subTitle: "Notifications on your mobile",
                                  notif: true,
                                ),
                              ]),
                        ),
                      ),
                    )
                  ],
                ),

                VisaCartContainer(),
              ],
            ),
          ),
        ));
  }
}
