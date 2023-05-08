import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/icon_manager.dart';
import '../screens/Games_screen.dart';
import '../screens/cards_screen.dart';
import '../screens/expenses_screen.dart';
import '../screens/home_screen.dart';
import '../screens/services_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<Homestates> {
  HomeCubit() : super(HomeInitial());

  // static HomeCubit get(context)=> BlocProvider.of(context);

  String fingerPrint = "empty";
  void checkFingerPrint(){
    emit(HomeCheckFingerPrintLoading());
  }
    //code for finger PRint 
    
    // bottom navigation bar Items
    int currentIndex = 0;

  int getCurrentIndex() => currentIndex;

  
  

  void ChangeBottomNavBar(int index){
    emit(BottomNavInitiateState());
    currentIndex =index;
    
    print(currentIndex);
    emit(BottomNavChangeState());
  }

  List<Widget> Screens =[
    HomeScreen(),
    CardsScreen(),
    ServicesScreeen(),
    ExpensesScreen(),
    GamesScreen(),
  
  ];

   bool notif_status =true ;
  
   void changeNotificationStatus ()
   {
     emit(NotificationInitiateState());
     notif_status =!notif_status ;
     print(notif_status);
     emit(NotificationChangeState());
   } 
    
  }
