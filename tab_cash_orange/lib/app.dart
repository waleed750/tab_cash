import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/config/localization/app_localizations_delegate.dart';
import 'package:tab_cash_orange/core/utils/app_strings.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/login_cubit.dart';
import 'package:tab_cash_orange/features/home/presentation/cubit/home_cubit.dart';

import 'config/localization/app_localizations.dart';
import 'config/localization/app_localizations_setup.dart';
import 'config/routes/app_routes.dart';
import 'features/home/presentation/cubit/expenses/cubit/expenses_cubit.dart';
import 'injection_container.dart' as di ;
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<ExpensesCubit>()),
        BlocProvider(create: (context)=> di.sl<HomeCubit>()),
        BlocProvider(create: (context)=> di.sl<LoginCubit>()),


        
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        
        title: AppStrings.appTitle,
        initialRoute: Routes.splashRoute,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        locale: Locale(AppStrings.englishCode),
        supportedLocales: AppLocalizationsSetup.supportedLocales,
              localeResolutionCallback:
              AppLocalizationsSetup.localeResolutionCallback,
              localizationsDelegates:
              AppLocalizationsSetup.localizationsDelegates,
      ),
    );
  }
}
