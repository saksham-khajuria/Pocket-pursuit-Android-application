import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  UserCredential userCredential;

  Stream get account {
    return _auth.authStateChanges();
  }

  User get user {
    return _auth.currentUser;
  }
  // sign in anonymously

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future logout() async {
    await _auth.signOut();
    return true;
  }

  Future signInWithEmail({String email, String password}) async {
    try {
      userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return true;
    } catch (e) {
      print(e.toString());
    }
  }
}
