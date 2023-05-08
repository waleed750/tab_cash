import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:tab_cash_orange/features/authentication/presentation/screens/home_screen.dart';

import '../../core/utils/app_strings.dart';
import '../../features/authentication/presentation/screens/main_screen.dart';
import '../../features/login/presentation/screens/splash_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String homeRoute = '/home';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case Routes.homeRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => AuthenticationCubit() ,
              child:  MainScreen(), 
        ));
      default:
        return onUndefinedRoute();
    }
  }

  static Route<dynamic> onUndefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => const Scaffold(
              body: Center(
                child: Text(AppStrings.undefinedRoute),
              ),
            ));
  }
}
