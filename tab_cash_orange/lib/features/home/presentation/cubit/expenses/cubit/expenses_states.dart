import 'package:equatable/equatable.dart';


abstract class ExpensesState extends Equatable {
  const ExpensesState();

  @override
  List<Object> get props => [];
}

class ExpensesInitial extends ExpensesState {}

class ExpensesChangeMonthStartState extends ExpensesState{}

class ExpensesChangeMonthEndState extends ExpensesState{}


class ExpensesSwitchButtonStartState extends ExpensesState{}

class ExpensesSwitchButtonEndState extends ExpensesState{}


