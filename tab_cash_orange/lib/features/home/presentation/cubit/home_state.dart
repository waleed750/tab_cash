// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

abstract class Homestates extends Equatable {
  const Homestates();

  @override
  List<Object> get props => [];
}

class HomeInitial extends Homestates {}

class HomeCheckFingerPrintLoading extends Homestates {

}

class HomeCheckFingerPrintSuccessful extends Homestates {
  bool matchs ;
  HomeCheckFingerPrintSuccessful({
    required this.matchs,
  });
}

class HomeCheckFingerPrintError extends Homestates {
  String error; 
  HomeCheckFingerPrintError({
    required this.error,
  });
}


 class BottomNavInitiateState extends Homestates {}

 class BottomNavChangeState extends Homestates {}


 class HomeSucessState extends Homestates {}

 class CardsSucessState extends Homestates {}

 class ServicesSucessState extends Homestates {}

 class ExpensesSucessState extends Homestates {}

 class GamesSucessState extends Homestates {}

class HomeErrorState extends Homestates{
  final String error ;
  HomeErrorState(this.error);
}

class CardsErrorState extends Homestates{
  final String error ;
  CardsErrorState(this.error);
}
class ServicesErrorState extends Homestates{
  final String error ;
  ServicesErrorState(this.error);
}
class ExpensesErrorState extends Homestates{
  final String error ;
  ExpensesErrorState(this.error);
}
class GamesErrorState extends Homestates{
  final String error ;
  GamesErrorState(this.error);
}
 
class NotificationInitiateState extends Homestates {}

 class NotificationChangeState extends Homestates {}