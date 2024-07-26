import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;
  //Firebase outtan gelecek olan useri bana return et demek

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  //Stream saysesinde userda bir değişiklik olduğunda benim haberim olacak
  //Bizim userimiz çıkış yaptımı yoksa hala duryor mu

  //Registir
  Future<void> createUser({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  //login
  Future<void> sigIn({
    required String email,
    required String password,
  }) async {}

  //Sign out
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
