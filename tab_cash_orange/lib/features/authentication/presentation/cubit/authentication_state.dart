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
