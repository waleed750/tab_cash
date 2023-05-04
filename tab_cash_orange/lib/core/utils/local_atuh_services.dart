import 'package:local_auth/local_auth.dart';

class Services {
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  bool _isFingerprintEnabled = false;
  String _authError = '';

  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics;
    try {
      
      canCheckBiometrics = await _localAuthentication.canCheckBiometrics;
      
    } catch (e) {
        _authError = 'Error: $e';      
      return;
    }
      _isFingerprintEnabled = canCheckBiometrics;
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
      if(isAuthenticated){

      }else{
        
      }
    } catch (e) {
      
        _authError = 'Error: $e';
        print(_authError);
      return;
    }

    if (isAuthenticated) {
      // Fingerprint authentication successful
      // Now you can insert the fingerprint data into your database
    } else {
        _authError = 'Authentication failed';
    }
  }
}