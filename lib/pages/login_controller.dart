import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  var _googleSign = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);

  login() async {
    googleAccount.value = await _googleSign.signIn();
  }

  logout() async {
    googleAccount.value = await _googleSign.signOut();
  }
}
