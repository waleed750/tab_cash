import 'package:local_auth/local_auth.dart';
import 'package:tab_cash_orange/core/errors/exceptions.dart';
import 'package:tab_cash_orange/core/errors/failure.dart';

class Services {
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  bool _isFingerprintEnabled = false;
  String _authError = '';

  Future<bool> checkBiometrics() async {
    bool canCheckBiometrics;
    try {
      
      canCheckBiometrics = await _localAuthentication.canCheckBiometrics;
      
    } catch (e) {
        _authError = 'Error: $e';      
        throw(UndefinedException(error: "Check BioMetrics Error"));
    }
      _isFingerprintEnabled = canCheckBiometrics;
      return canCheckBiometrics;
  }

  Future<bool> authenticate() async {
    bool isAuthenticated = false;

    try {
      isAuthenticated = await _localAuthentication.authenticate(
        localizedReason: 'Please authenticate to access your account',
        options: const AuthenticationOptions(
          stickyAuth: true , 
          useErrorDialogs: true
        )
        
      );
      return isAuthenticated;
    } catch (e) {
      
        _authError = 'Error: $e';
        print(_authError);
        throw(UndefinedException(error: _authError.toString()));
    }

    // if (isAuthenticated) {
    //   // Fingerprint authentication successful
    //   // Now you can insert the fingerprint data into your database
    // } else {
    //     _authError = 'Authentication failed';
    // }
  }
}