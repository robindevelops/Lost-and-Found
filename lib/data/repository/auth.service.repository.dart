import 'package:authentication/domain/respository/auth.repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServiceRepository extends AuthRepository {
  @override
  Future<UserCredential> signup({required email, required password}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user;
    } catch (e) {
      throw Exception('Signup failed. Please check your inputs or try again.');
    }
  }

  @override
  Future signin({required email, required password}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      UserCredential user = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user.credential;
    } catch (e) {}
  }

  @override
  Future<void> resetPassword({required email}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.sendPasswordResetEmail(
        email: email,
      );
    } catch (e) {}
  }
}
