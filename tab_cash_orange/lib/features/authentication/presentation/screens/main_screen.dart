import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../cubit/authentication_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
     var cubit = BlocProvider.of<AuthenticationCubit>(context);
    return BlocListener<AuthenticationCubit, AuthenticationState>(
       listener: (BuildContext context, state) {},
       
      child: Scaffold(
       
        body: cubit.Screens[cubit.currentIndex],
         bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedItemColor: AppColors.black,
            selectedItemColor: AppColors.buttonColor,
           currentIndex: cubit.currentIndex ,
            items:cubit.bottomItem ,
            onTap: (index) {
              cubit.ChangeBottomNavBar(index) ;
              
            }
          ),
      ),
    );
  }
}