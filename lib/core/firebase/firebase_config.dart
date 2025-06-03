import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> getCurrentUser() async {
  return FirebaseAuth.instance.currentUser;
}

Future<void> signOut() async {
  try {
    await FirebaseAuth.instance.signOut();
  } catch (e) {
    print('Error signing out: $e');
  }
}

Future<User?> signInWithEmailAndPassword(String email, String password) async {
  try {
    final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  } catch (e) {
    print('Error signing in with email and password: $e');
    return null;
  }
}

Future<User?> createUserWithEmailAndPassword(String email, String password) async {
  try {
    final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  } catch (e) {
    print('Error creating user with email and password: $e');
    return null;
  }
}

Future<void> sendPasswordResetEmail(String email) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  } catch (e) {
    print('Error sending password reset email: $e');
  }
}

Future<void> updateUserProfile(String displayName, String photoURL) async {
  try {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user.updateDisplayName(displayName);
      await user.updatePhotoURL(photoURL);
      await user.reload();
    }
  } catch (e) {
    print('Error updating user profile: $e');
  }
}

Future<void> deleteUser() async {
  try {
    final user = FirebaseAuth.instance.currentUser;
    await user?.delete();
  } catch (e) {
    print('Error deleting user: $e');
  }
}

Future<User?> loginWithGoogle() async {
  try {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return null;
    
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    return userCredential.user;
  } catch (e) {
    print('Error signing in with Google: $e');
    return null;
  }
}