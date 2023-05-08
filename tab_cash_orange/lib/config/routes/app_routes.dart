import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/app_strings.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';
import '../../features/home/presentation/screens/main_screen.dart';
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
              create: (context) => HomeCubit() ,
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
