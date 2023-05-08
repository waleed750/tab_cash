import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'expenses_states.dart';



class ExpensesCubit extends Cubit<ExpensesState> {
  ExpensesCubit() : super(ExpensesInitial());

  DateTime selectedDate = DateTime.now();
  var selectedDateString =DateFormat('MMMM yyyy').format(DateTime.now()); 

  int labelIndex = 0 ; //! For Switch Button

  Future<void> changeMonth(BuildContext context ) async{
    emit(ExpensesChangeMonthStartState());
    final DateTime initialDate =   selectedDate ;
              final DateTime firstDate = DateTime(2023);
              final DateTime lastDate = DateTime(2100);
         var value =    await  showDatePicker(
                  context: context,
                  initialDate: initialDate,
                  initialDatePickerMode: DatePickerMode.year,

                  firstDate: firstDate,
                  lastDate: lastDate);
     selectedDate = value!;
      selectedDateString = DateFormat('MMMM yyyy').format(selectedDate);
                     
    emit(ExpensesChangeMonthEndState());

  }

  void switchButton(){
    emit(ExpensesSwitchButtonStartState());
    labelIndex = labelIndex == 0 ? 1 : 0 ;
    emit(ExpensesSwitchButtonEndState());
  }
}
