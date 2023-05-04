import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class FingerprintScreen extends StatefulWidget {
  @override
  _FingerprintScreenState createState() => _FingerprintScreenState();
}

class _FingerprintScreenState extends State<FingerprintScreen> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  bool _isFingerprintEnabled = false;
  String _authError = '';
  var _availableBiometrics;

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

        options: const AuthenticationOptions(
          stickyAuth: true , 
          useErrorDialogs: true
        )
        
      );
      print("Loaded");
    } catch (e) {
      setState(() {
        _authError = 'Error: $e';
        print(_authError);
      });
      return;
    }

    if (isAuthenticated) {
      // Fingerprint authentication successful
      
      // }
     await _getAvailableBiometric();
    } else {
      setState(() {
        _authError = 'Authentication failed';
      });
    }
  }

  Future<void> _getAvailableBiometric() async {
  List<BiometricType> availableBiometric;

  try{

    availableBiometric = await _localAuthentication.getAvailableBiometrics();
    setState(() {
    _availableBiometrics = availableBiometric;
  });
  
  } on PlatformException catch (e){
    print(e);
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
