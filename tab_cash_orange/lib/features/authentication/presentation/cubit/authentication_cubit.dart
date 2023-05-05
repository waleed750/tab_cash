import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/Games_screen.dart';
import '../screens/cards_screen.dart';
import '../screens/expenses_screen.dart';
import '../screens/home_screen.dart';
import '../screens/services_screen.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  // static AuthenticationCubit get(context)=> BlocProvider.of(context);

  String fingerPrint = "empty";
  void checkFingerPrint(){
    emit(AuthenticationCheckFingerPrintLoading());
  }
    //code for finger PRint 
    
    // bottom navigation bar Items
    int currentIndex =0;

  List<BottomNavigationBarItem> bottomItem =[
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
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
   
  ];

  void ChangeBottomNavBar(int index){
    currentIndex =index;
    if(index == 1){
      CardsScreen();
    }else if(index == 2){
      ServicesScreeen();
    }else if(index == 3){
      ExpensesScreen();
    }else if(index == 4){
      GamesScreen();
    }
    else{
      HomeScreen();
    }
    print(currentIndex);
    emit(BottomNavState());
  }

  List<Widget> Screens =[
    HomeScreen(),
    CardsScreen(),
    ServicesScreeen(),
    ExpensesScreen(),
    GamesScreen(),
  
  ];

    
    
  }
