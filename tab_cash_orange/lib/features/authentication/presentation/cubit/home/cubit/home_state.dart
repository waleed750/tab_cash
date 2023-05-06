part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeChangeMonthStartState extends HomeState{}

class HomeChangeMonthEndState extends HomeState{}


class HomeSwitchButtonStartState extends HomeState{}

class HomeSwitchButtonEndState extends HomeState{}


