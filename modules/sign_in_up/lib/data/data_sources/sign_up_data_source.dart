import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

import '../model/user_model.dart';

abstract class SignUpDataSource {
  Future<Unit> signUpWithEmailPassword(UserModel userModel);

  Future<Unit> signInGoogle();
}

class SignUpDataSourceImpl implements SignUpDataSource {
  @override
  Future<Unit> signUpWithEmailPassword(UserModel userModel) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userModel.email,
        password: userModel.email,
      );
      return Future.value(unit);
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<Unit> signInGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) throw ServerException();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);

    return Future.value(unit);
  }
}
