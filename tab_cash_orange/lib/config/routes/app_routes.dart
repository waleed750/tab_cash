import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/features/splash/presentation/cubit/splash_cubit.dart';

import '../../core/utils/app_strings.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';
import '../../features/home/presentation/screens/main_screen.dart';
import 'package:tab_cash_orange/injection_container.dart' as di;
class Routes {
  static const String initialRoute = '/';
  static const String splashRoute = '/splash';
  static const String homeRoute = '/home';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => di.sl<SplashCubit>(),
            child: SplashScreen(),
          ),
        );
      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
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
