import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  String fingerPrint = "empty";
  void checkFingerPrint(){
    emit(AuthenticationCheckFingerPrintLoading());

    //code for finger PRint 
    
    
  }
}
