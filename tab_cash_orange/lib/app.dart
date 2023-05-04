import 'package:flutter/material.dart';
import 'package:tab_cash_orange/config/localization/app_localizations_delegate.dart';
import 'package:tab_cash_orange/core/utils/app_strings.dart';

import 'config/localization/app_localizations.dart';
import 'config/localization/app_localizations_setup.dart';
import 'config/routes/app_routes.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      // initialRoute: ,
      // onGenerateRoute: ,
      // builder: ,
      // theme: ,
      title: AppStrings.appTitle,
      initialRoute: Routes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      locale: const Locale(AppStrings.englishCode),
      supportedLocales: AppLocalizationsSetup.supportedLocales,
            localeResolutionCallback:
            AppLocalizationsSetup.localeResolutionCallback,
            localizationsDelegates:
            AppLocalizationsSetup.localizationsDelegates,
    );
  }
}
