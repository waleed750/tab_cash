import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash_orange/core/utils/app_colors.dart';
import 'package:tab_cash_orange/core/utils/icon_manager.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tab_cash_orange/core/utils/media_extension.dart';
// import 'package:tab_cash_orange/core/utils/AppColors.dart';
import '../../../../core/utils/app_colors.dart';
import '../widgets/circle_dot.dart';
import '../widgets/person_container.dart';
import '../widgets/search_form_field.dart';

class HomeScreen extends StatelessWidget {
<<<<<<< Updated upstream
  HomeScreen({super.key});

  TextEditingController searchController = TextEditingController();

=======
   HomeScreen();
  int currentIndex = 0 ; 
>>>>>>> Stashed changes
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AuthenticationCubit>(context);
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (BuildContext context, state) {},
      child: Scaffold(
        backgroundColor: AppColors.buttonColor,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.buttonColor,
          ),
          backgroundColor: AppColors.buttonColor,
          elevation: 0,
        ),
<<<<<<< Updated upstream
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: context.height * .3095,
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outline_outlined,
                            size: 34,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SearchFormField(
                            controller: searchController,
                            height: context.height * .05,
                            hintText: "Search",
                            prefixIcon: Icon(
                              Icons.search,
                              size: 25,
                              color: HexColor("#5A5A5A"),
                            ),
                            width: context.width * .7,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.notifications_none,
                            size: 34,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.width * .03),
                      child: Text(
                        "Balance Account",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.backgroundColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ 34.60",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textColor,
                            ),
                          ),
                          Center(
                            child: Text(
                              "\$ 2934.60",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: AppColors.backgroundColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            "\$ 29",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: context.height * .035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleDotContainer(
                          color: AppColors.backgroundColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleDotContainer(
                          color: AppColors.backgroundColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleDotContainer(
                          color: AppColors.backgroundColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: context.height * .5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: AppColors.backgroundColor,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: context.height * .03,
                            left: context.height * .02),
                        child: Text(
                          "Features",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.height * .12,
                      ),
                      Center(
                        child: Container(
                          width: context.width * .87,
                          height: context.height * .16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColors.buttonColor, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Transfer to",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.qr_code_scanner_sharp,
                                          size: 29,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            radius: context.width * .068,
                                            backgroundColor: HexColor("#D9D9D9"),
                                            child: Icon(Icons.add),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "add",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      PersonContainer(name: "Ahmed"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      PersonContainer(name: "Ahmed"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      PersonContainer(name: "Ahmed"),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          width: context.width * .87,
                          height: context.height * .1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  AppColors.secondColor,
                                  AppColors.buttonColor,
                                ],
                              )),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Add New Card",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.backgroundColor),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "You can add new card to\nTapCash in a minute",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.textColor),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: context.width * .1),
                                  child: Image.asset("assets/images/visa.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 5, left: context.height * .02),
                        child: Text(
                          "Monthly stats",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
       
=======
        body: Center(child: Text("FingerPrint : ${cubit.fingerPrint}")),
        bottomNavigationBar:BottomNavigationBar(
          fixedColor: AppColors.buttonColor,
          items:[
          BottomNavigationBarItem(icon: SvgPicture.asset(
    IconManager.homeIcon,
    height: 22,
    color: currentIndex == 0 ?   AppColors.buttonColor : Colors.black ,

  ),
  label: "Home"
  ),
  BottomNavigationBarItem(icon: SvgPicture.asset(
    IconManager.expensesIcon, 
    height: 22,
    color: Colors.black,
  ),
  label: "expenses"
  )

        ])
>>>>>>> Stashed changes
      ),
    );
  }
}
///crop free  //Monitoring


/*
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class FingerprintScreen extends StatefulWidget {
  @override
  _FingerprintScreenState createState() => _FingerprintScreenState();
}

class _FingerprintScreenState extends State<FingerprintScreen> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  bool _isFingerprintEnabled = false;
  String _authError = '';

  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await _localAuthentication.canCheckBiometrics;
    } catch (e) {
      setState(() {
        _authError = 'Error: $e';
      });
      return;
    }

    setState(() {
      _isFingerprintEnabled = canCheckBiometrics;
    });
  }

  Future<void> _authenticate() async {
    bool isAuthenticated = false;

    try {
      isAuthenticated = await _localAuthentication.authenticate(
        localizedReason: 'Please authenticate to access your account',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } catch (e) {
      setState(() {
        _authError = 'Error: $e';
      });
      return;
    }

    if (isAuthenticated) {
      // Fingerprint authentication successful
      // Now you can insert the fingerprint data into your database
    } else {
      setState(() {
        _authError = 'Authentication failed';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _checkBiometrics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fingerprint Authentication'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _isFingerprintEnabled
                  ? 'Fingerprint authentication enabled'
                  : 'Fingerprint authentication not available',
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: _isFingerprintEnabled ? _authenticate : null,
              child: Text('Authenticate'),
            ),
            SizedBox(height: 20),
            Text(_authError),
          ],
        ),
      ),
    );
  }
}


 */