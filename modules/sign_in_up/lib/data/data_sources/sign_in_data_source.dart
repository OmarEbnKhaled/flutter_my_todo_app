import 'package:core/failure/exception.dart';
import 'package:dependencies/dependencies.dart';

abstract class SignInDataSource {
  Future<Unit> signInEmailPassword(
    String email,
    String password,
  );

  Future<Unit> signInGoogle();
}

class SignInDataSourceImpl implements SignInDataSource {
  @override
  Future<Unit> signInEmailPassword(
    String email,
    String password,
  ) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      throw ServerException();
    }
    return Future.value(unit);
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
