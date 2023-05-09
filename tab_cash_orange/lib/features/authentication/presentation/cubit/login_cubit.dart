import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tab_cash_orange/core/usecases/usecases.dart';
import 'package:tab_cash_orange/core/utils/local_atuh_services.dart';

import '../../domain/usecases/fingerprint_usecase.dart';
import 'package:tab_cash_orange/injection_container.dart' as di;
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.fingerprintUseCase,
  }) : super(LoginInitial());
  FingerprintUseCase fingerprintUseCase;
  bool isVissible = false;

  Future<void> checkFingerPrint()async{
    emit(LoginFingerPrintStart());
    var response = await fingerprintUseCase(NoParams());
    response.fold(
      (l) => emit(LoginFingerPrintErorr(l.toString())),
      (r) => emit(LoginFingerPrintSuccess()));
  }
  void changVisiblity(){
    emit(LoginChagneVisible());
    isVissible = !isVissible;
    emit(LoginVisibleDone());

  }
}
