

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tab_cash_orange/core/api/api_consumer.dart';
import 'package:tab_cash_orange/core/api/dio_consumer.dart';
import 'package:tab_cash_orange/core/network/network_info.dart';
import 'package:tab_cash_orange/features/splash/data/datasources/lang_local_data_source.dart';
import 'package:tab_cash_orange/features/splash/data/repositories/lang_repo_impl.dart';
import 'package:tab_cash_orange/features/splash/domain/usecases/change_lang_usecase.dart';
import 'package:tab_cash_orange/features/splash/presentation/cubit/splash_cubit.dart';

import 'core/api/app_interceptors.dart';
import 'features/home/presentation/cubit/expenses/cubit/expenses_cubit.dart';
import 'features/home/presentation/cubit/home_cubit.dart';
import 'features/splash/domain/usecases/get_lang_usecase.dart';

GetIt sl = GetIt.instance;
Future<void> init() async{
  //! Features
  //Bloc
  sl.registerLazySingleton<HomeCubit>(() => HomeCubit());
  sl.registerLazySingleton<ExpensesCubit>(() => ExpensesCubit());
  sl.registerLazySingleton<SplashCubit>(() => SplashCubit(changeLangUseCase: sl<ChangeLangUseCase>() , getSavedLangUseCase: sl<GetLangUseCase>())..getCurrentLanguage());

  //* Splash
  //usecases
  sl.registerLazySingleton(() => ChangeLangUseCase(langRepo: sl<LangRepoImpl>()));
  sl.registerLazySingleton(() => GetLangUseCase(langRepo: sl<LangRepoImpl>()));


  //Repos
  sl.registerLazySingleton(() => LangRepoImpl(langLocalDataSource: sl()));

  //Datasourcse 
  sl.registerLazySingleton(() => LangLocalDataSourceImpl(sharedPreferences: sl()));
  
  
  
  //! Core 
  //network 
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  //Api
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl<Dio>()));
  sl.registerLazySingleton(() => Dio());

  //Interceptors
  sl.registerLazySingleton(() => AppInterceptors());
  sl.registerLazySingleton(() => LogInterceptor());

  //? SharedPrefrences 
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
   

}