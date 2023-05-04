import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:tab_cash_orange/features/authentication/presentation/screens/finger_print_screen.dart';
import 'package:tab_cash_orange/features/authentication/presentation/screens/home_screen.dart';

import '../../core/utils/app_strings.dart';
import '../../features/authentication/presentation/screens/splash_screen.dart';
import 'package:tab_cash_orange/injection_container.dart' as di;

import '../../test/test_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String splashRoute = '/splash';
  static const String homeRoute = '/home';
  static const String testRoute = '/testScreen';

}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case Routes.homeRoute:
        return MaterialPageRoute(
          
            builder: (context) => BlocProvider(
              create: (context) => di.sl<AuthenticationCubit>() ,
              child: FingerprintScreen(), 
        ));
      case Routes.testRoute : 
        return MaterialPageRoute(builder: (context) => TestScreen());  
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
