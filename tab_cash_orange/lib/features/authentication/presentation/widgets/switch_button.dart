import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/config/localization/app_localizations.dart';
import 'package:tab_cash_orange/core/utils/app_colors.dart';
import 'package:tab_cash_orange/core/utils/app_strings.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/home/cubit/home_cubit.dart';
import 'package:toggle_switch/toggle_switch.dart';

Widget switchButton(BuildContext context) =>
        Center(
          child: ToggleSwitch(
            minWidth: 90.0,
            cornerRadius: 20.0,
            activeBgColors: [
              [AppColors.buttonColor],
              [AppColors.buttonColor]
            ],
            activeFgColor: Colors.white,
            inactiveBgColor: AppColors.disabledColor,
            inactiveFgColor: Colors.white,
            initialLabelIndex: BlocProvider.of<HomeCubit>(context).labelIndex,
            totalSwitches: 2,
            labels: [
              AppLocalizations.of(context)!.translate(AppStrings.categorie)!,
              AppLocalizations.of(context)!.translate(AppStrings.history)!
            ],
            radiusStyle: true,
            onToggle: (index) {
              BlocProvider.of<HomeCubit>(context).switchButton();
            },
          ),
        );
