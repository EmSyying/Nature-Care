import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();

  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException {
      return false;
    }
  }

// static Future<bool>authenticate()async{
//   final isAvaialable= await hasBiometrics();
//  if(!isAvaialable) return false;
// }
  static Future<bool> authenticate() async {
    final isAvaialable = await hasBiometrics();
    if (!isAvaialable) return false;
    try {
      return await _auth.authenticate(
          localizedReason: 'Please authenticate to show account balance',
          options: const AuthenticationOptions(
            useErrorDialogs: true,
            stickyAuth: true,
            biometricOnly: true,
          ));
    } on PlatformException {
      return false;
    }
  }
}
