import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash_orange/features/authentication/presentation/cubit/authentication_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AuthenticationCubit>(context);
    return BlocListener<AuthenticationCubit,AuthenticationState>(
      listener: (BuildContext context, state) { 

       },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Home" , style: TextStyle(
            fontSize: 18.0 , 
            fontWeight: FontWeight.bold , 
    
          ),),
        ),
        body: Center(child: Text("FingerPrint : ${cubit.fingerPrint}")),
      ),
    );
  }
}

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