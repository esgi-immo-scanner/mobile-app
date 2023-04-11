import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthHelper {
  
  /// Handle Google Signin to authenticate user
  Future<UserCredential?> googleSignInProcess() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }

    throw Exception('Google Signin Failed with empty user data');
  }

  /// To Check if the user is already signedin through google
  alreadySignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    bool alreadySignIn = await googleSignIn.isSignedIn();
    return alreadySignIn;
  }

  /// To signout from the application if the user is signed in through google
  Future<GoogleSignInAccount?> googleSignOutProcess() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await googleSignIn.signOut();

    return googleUser;
  }
}
