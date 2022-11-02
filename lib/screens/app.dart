import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled/screens/login.dart';

class App extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Login'),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        _googleSignIn.signOut();
                      })
                ],
              ),
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'provider ID: ' + snapshot.data.providerData[0].providerId,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'User UID: ' + snapshot.data.uid,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              )),
            );
          }
          return LoginScreen();
        }
      },
    );
  }
}
