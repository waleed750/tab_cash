

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tab_cash_orange/core/api/api_consumer.dart';
import 'package:tab_cash_orange/core/api/dio_consumer.dart';
import 'package:tab_cash_orange/core/network/network_info.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/authentication_cubit.dart';

import 'core/api/app_interceptors.dart';
import 'features/authentication/presentation/cubit/home/cubit/home_cubit.dart';

GetIt sl = GetIt.instance;

Future<void> init() async{
  //! Features
  //Bloc
  sl.registerLazySingleton<AuthenticationCubit>(() => AuthenticationCubit());
  sl.registerLazySingleton<HomeCubit>(() => HomeCubit());



  //! Core 
  //network 
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  //Api
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl<Dio>()));
  sl.registerLazySingleton(() => Dio());

  //Interceptors
  sl.registerLazySingleton(() => AppInterceptors());
  sl.registerLazySingleton(() => LogInterceptor());


}