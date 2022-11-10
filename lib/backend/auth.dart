import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dhanvantri/Models/User.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // ignore: non_constant_identifier_names
  ClientUserdetails? _ClientuserFromFirebaseUser(User? user) {
    if (user != null) {
      return ClientUserdetails(
          uid: user.uid,
          email: user.email,
          name: user.displayName,
          phone: user.phoneNumber);
    } else {
      return null;
    }
  }

  AdminUserdetails? _adminUserFromFirebaseUser(User? user) {
    if (user != null) {
      return AdminUserdetails(uid: user.uid);
    } else {
      return null;
    }
  }

  Stream<ClientUserdetails?> get user {
    return FirebaseAuth.instance.authStateChanges().map(
        _ClientuserFromFirebaseUser); //.map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  Future clientsignInWithEmailAndPassword(emailAddress, password) async {
    try {
      dynamic result = await _auth.signInWithEmailAndPassword(
          email: emailAddress, password: password);

      dynamic user = result.user;
      return _ClientuserFromFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        const AlertDialog(title: Text('No user found for that email.'));
        return null;
      } else if (e.code == 'wrong-password') {
        const AlertDialog(
            title: Text('Wrong password provided for that user.'));
        return null;
      }
    }
  }

  Future adminsignInWithEmailAndPassword(emailAddress, password) async {
    try {
      dynamic result = await _auth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      User user = result.user;
      return _ClientuserFromFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        const AlertDialog(title: Text('No user found for that email.'));
        return null;
      } else if (e.code == 'wrong-password') {
        const AlertDialog(
            title: Text('Wrong password provided for that user.'));
        return null;
      }
    }
  }
  // sign in with email and password

  // register with email and password
  Future createUserWithEmailAndPassword(
      emailAddress, password, displayName, phone) async {
    try {
      dynamic credential = await _auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      await credential.user.updateDisplayName(displayName);
      await credential.user.updatePhoneNumber(phone);
      return _ClientuserFromFirebaseUser(credential.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        //const AlertDialog(title: Text('The password provided is too weak.'));
        //print('The password provided is too weak.');
        return null;
      } else if (e.code == 'email-already-in-use') {
        //const AlertDialog(
        //    title: Text('The account already exists for that email.'));
        //print('The account already exists for that email.');
        return null;
      }
    } catch (e) {
      //print(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
