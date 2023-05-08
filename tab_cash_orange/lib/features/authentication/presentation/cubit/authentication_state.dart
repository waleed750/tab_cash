// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'authentication_cubit.dart';

abstract class Home2State extends Equatable {
  const Home2State();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends Home2State {}

class AuthenticationCheckFingerPrintLoading extends Home2State {

}

class AuthenticationCheckFingerPrintSuccessful extends Home2State {
  bool matchs ;
  AuthenticationCheckFingerPrintSuccessful({
    required this.matchs,
  });
}

class AuthenticationCheckFingerPrintError extends Home2State {
  String error; 
  AuthenticationCheckFingerPrintError({
    required this.error,
  });
}


 class BottomNavInitiateState extends Home2State {}

 class BottomNavChangeState extends Home2State {}


 class HomeSucessState extends Home2State {}

 class CardsSucessState extends Home2State {}

 class ServicesSucessState extends Home2State {}

 class ExpensesSucessState extends Home2State {}

 class GamesSucessState extends Home2State {}

class HomeErrorState extends Home2State{
  final String error ;
  HomeErrorState(this.error);
}

class CardsErrorState extends Home2State{
  final String error ;
  CardsErrorState(this.error);
}
class ServicesErrorState extends Home2State{
  final String error ;
  ServicesErrorState(this.error);
}
class ExpensesErrorState extends Home2State{
  final String error ;
  ExpensesErrorState(this.error);
}
class GamesErrorState extends Home2State{
  final String error ;
  GamesErrorState(this.error);
}
 
class NotificationInitiateState extends Home2State {}

 class NotificationChangeState extends Home2State {}