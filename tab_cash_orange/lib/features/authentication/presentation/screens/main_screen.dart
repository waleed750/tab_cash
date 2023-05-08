import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tab_cash_orange/features/authentication/presentation/screens/expenses_screen.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/icon_manager.dart';
import '../cubit/authentication_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<Home2Cubit>(context);
    return BlocConsumer<Home2Cubit, Home2State>(
      listener: (BuildContext context, state) {},
      builder: (context, state) => Scaffold(
        appBar: null,
        body: cubit.Screens[cubit.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedItemColor: AppColors.black,
            selectedItemColor: AppColors.buttonColor,
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconManager.homeIcon,
                  height: 18,
                  color: cubit.currentIndex == 0
                      ? AppColors.buttonColor
                      : Colors.black,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    IconManager.walletIcon,
                    height: 18,
                    color: cubit.currentIndex == 1
                        ? AppColors.buttonColor
                        : Colors.black,
                  ),
                  label: "Cards"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    IconManager.categoryIcon,
                    height: 18,
                    color: cubit.currentIndex == 2
                        ? AppColors.buttonColor
                        : Colors.black,
                  ),
                  label: "services"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    IconManager.expensesIcon,
                    height: 18,
                    color: cubit.currentIndex == 3
                        ? AppColors.buttonColor
                        : Colors.black,
                  ),
                  label: "Expenses"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    IconManager.gamesIcon,
                    height: 18,
                    color: cubit.currentIndex == 4
                        ? AppColors.buttonColor
                        : Colors.black,
                  ),
                  label: "Games"),
            ],
            onTap: (index) {
              cubit.ChangeBottomNavBar(index);
            }),
      ),
    );
  }
}
