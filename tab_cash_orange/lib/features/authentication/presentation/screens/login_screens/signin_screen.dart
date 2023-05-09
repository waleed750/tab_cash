import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/config/routes/app_routes.dart';
import 'package:tab_cash_orange/core/utils/app_colors.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
import 'package:tab_cash_orange/core/widgets/default_button.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/login_cubit.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen();

  @override
  Widget build(BuildContext context) {
    var textEditorController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = BlocProvider.of<LoginCubit>(context);
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Form
                    (
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                            "Login to continue",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff757171),
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                                    
                          // Note: Same code is applied for the TextFormField as well
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              label: Text('Phone number'),
                              focusColor: AppColors.buttonColor,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: AppColors.black), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: cubit.isVissible,
                            decoration: InputDecoration(
                              
                              label: const Text('Password'),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    cubit.changVisiblity();
                                  },
                                  icon: !cubit.isVissible
                                      ? const Icon(Icons.remove_red_eye)
                                      : const Icon(Icons.visibility_off_sharp)),
                              focusColor: AppColors.buttonColor,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: AppColors.black), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(onPressed: (){},
                               child: Text(
                                'forgot password ?' , 
                                style: TextStyle(
                                  color: AppColors.buttonColor ,
                                    
                                ),
                               ))
                            ],
                          ),
                          
                          DefaultButton(disabledColor: false,
                           text: 'Login',
                                    
                          function: ()=> Navigator.pushNamedAndRemoveUntil(context, Routes.homeRoute,
                           (route) => false)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
      },
    );
  }

 
}
