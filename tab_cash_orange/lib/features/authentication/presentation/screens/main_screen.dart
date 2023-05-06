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
     var cubit = BlocProvider.of<AuthenticationCubit>(context);
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
       listener: (BuildContext context, state) {},
       
      builder: (context,state) => Scaffold(
       
        body: ExpensesScreen(),//cubit.Screens[cubit.currentIndex]
         bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedItemColor: AppColors.black,
            selectedItemColor: AppColors.buttonColor,
            
           currentIndex: cubit.currentIndex ,
            items:[
    BottomNavigationBarItem(
        icon: SvgPicture.asset(
    IconManager.homeIcon,
    height: 18,
    color: cubit.currentIndex == 0 ?   AppColors.buttonColor : Colors.black ,
    
  ),
        label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(
          Icons.home_outlined,
      ),
      label: "Cards"
    ),
    BottomNavigationBarItem(
      icon: Icon(
          Icons.home_outlined,
      ),
      label: "services"
    ),

   BottomNavigationBarItem(
      icon: Icon(
          Icons.home_outlined,
      ),
      label: "Expenses"
    ),

     BottomNavigationBarItem(
      icon: Icon(
          Icons.home_outlined,
      ),
      label: "Games"
    ),
   
  ],
            onTap: (index) {
              cubit.ChangeBottomNavBar(index) ;
              
            }
          ),
      ),
    );
  }
}