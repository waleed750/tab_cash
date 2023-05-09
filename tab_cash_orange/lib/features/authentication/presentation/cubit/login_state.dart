part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginChagneVisible extends LoginState {}

class LoginVisibleDone extends LoginState {}


class LoginFingerPrintStart extends LoginState {}

class LoginFingerPrintSuccess extends LoginState {}

class LoginFingerPrintErorr extends LoginState {
  final String error ;

  LoginFingerPrintErorr(this.error);
}


