import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_app/shared/snackbar.dart';

class AuthMethods {
  register(
      {required emailll,
      required passworddd,
      required context,
      required titleee,
      required usernameee}) async {
    String message = "ERROR => Not starting the code";

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailll,
        password: passworddd,
      );

      message = "ERROR => Registered only";

// firebase firestore (Database)
      CollectionReference users =
          FirebaseFirestore.instance.collection('userSSS');
      users
          .doc(credential.user!.uid)
          .set({
            'username': usernameee,
            'title': titleee,
            "email": emailll,
            "password": passworddd
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));

      message = " Registered & User Added 2 DB ♥";
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, "ERROR :  ${e.code} ");
    } catch (e) {
      print(e);
    }

    showSnackBar(context, message);
  }
}
