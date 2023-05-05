// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'authentication_cubit.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationCheckFingerPrintLoading extends AuthenticationState {

}

class AuthenticationCheckFingerPrintSuccessful extends AuthenticationState {
  bool matchs ;
  AuthenticationCheckFingerPrintSuccessful({
    required this.matchs,
  });
}

class AuthenticationCheckFingerPrintError extends AuthenticationState {
  String error; 
  AuthenticationCheckFingerPrintError({
    required this.error,
  });
}

 class BottomNavState extends AuthenticationState {}

 class HomeSucessState extends AuthenticationState {}

 class CardsSucessState extends AuthenticationState {}

 class ServicesSucessState extends AuthenticationState {}

 class ExpensesSucessState extends AuthenticationState {}

 class GamesSucessState extends AuthenticationState {}

class HomeErrorState extends AuthenticationState{
  final String error ;
  HomeErrorState(this.error);
}

class CardsErrorState extends AuthenticationState{
  final String error ;
  CardsErrorState(this.error);
}
class ServicesErrorState extends AuthenticationState{
  final String error ;
  ServicesErrorState(this.error);
}
class ExpensesErrorState extends AuthenticationState{
  final String error ;
  ExpensesErrorState(this.error);
}
class GamesErrorState extends AuthenticationState{
  final String error ;
  GamesErrorState(this.error);
}
 
