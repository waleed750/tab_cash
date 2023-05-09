import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/config/routes/app_routes.dart';
import 'package:tab_cash_orange/core/utils/app_colors.dart';
import 'package:tab_cash_orange/core/utils/local_atuh_services.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
import 'package:tab_cash_orange/features/authentication/data/data_sources/local_data_source.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/login_cubit.dart';
import 'package:tab_cash_orange/injection_container.dart' as di;
class LoginScreen extends StatelessWidget {
  const LoginScreen();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        
        if(state is LoginFingerPrintSuccess){
          Navigator.pushNamedAndRemoveUntil(context,
           Routes.homeRoute, (route) => false);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.only(
              bottom: 8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: context.width * .68,
                  height: 234,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Color(0xff2255ee),
                  ),
                ),
                Spacer(),
                const Text(
                  "Welcome, Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const Text(
                  "Select your Sign in method",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff757171),
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: context.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Do you have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: AppColors.buttonColor),
                        ))
                  ],
                ),
                const SizedBox(height: 10.0),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signinRoute);
                  },
                  child: Container(
                    width: 339,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff111441),
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.call),
                        const SizedBox(width: 16),
                        const Text(
                          "Sign in with Phone",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                InkWell(
                  onTap: ()async{
                    await BlocProvider.of<LoginCubit>(context).checkFingerPrint();
                  },
                  child: Container(
                    width: 339,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff111441),
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.fingerprint),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Sign in with Fingerprint ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.2,
                ),
                Text(
                  "By signing in, i agree Privacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Terms of Service",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: AppColors.buttonColor),
                ),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
