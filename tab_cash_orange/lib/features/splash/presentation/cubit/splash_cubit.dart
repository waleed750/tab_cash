import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/app_strings.dart';
import '../../domain/usecases/change_lang_usecase.dart';
import '../../domain/usecases/get_lang_usecase.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({required this.getSavedLangUseCase, required this.changeLangUseCase}) : super(
    const ChangeLangState(Locale(AppStrings.englishCode))
  );
  final GetLangUseCase getSavedLangUseCase;
  final ChangeLangUseCase changeLangUseCase;

  var currentLang = AppStrings.englishCode;


  Future<void> getCurrentLanguage()async{
    final response = await getSavedLangUseCase(NoParams());
    
    response.fold((failure) => debugPrint(AppStrings.cacheFailureMsg) ,
        (value){
          currentLang = value;
          debugPrint("Value : $currentLang");
          emit(ChangeLangState(Locale(currentLang)));
        }
    );
  }
  Future<void> changeLanguage(String langCode) async{
    final response =await changeLangUseCase(langCode);
    response.fold((failure) => debugPrint(AppStrings.cacheFailureMsg) ,
            (value){
          currentLang = langCode;
          emit(ChangeLangState(Locale(currentLang)));
        }
    );
  }
  void changeLanguageToArabic () => changeLanguage(AppStrings.arabicCode);

  void changeLanguageToEnglish () => changeLanguage(AppStrings.englishCode);
}
