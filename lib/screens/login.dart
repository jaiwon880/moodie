import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // 차후에 웹버전을 위한 flag
    var _mobile = false;
    var _isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    var _isAOS = Theme.of(context).platform == TargetPlatform.android;
    if (_isAOS || _isIOS) {
      _mobile = true;
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Easy',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(38, 100, 100, 1.0),
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Icon(
                      Icons.star,
                      size: 50,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Text(
                    'Funny',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(38, 100, 100, 1.0),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Play',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Icon(
                      Icons.local_library,
                      size: 25,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Study',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(40.0),
              ),
// 구글 로그인
              SignInButton(
                Buttons.GoogleDark,
                onPressed: () {
                  _mobile // 모바일 함수와 웹 함수가 다름
                      ? _handleSignIn().then((user) {
                          print('Google(AOS): login');
                        })
                      : signInWithGoogleWeb().then((user) {
                          print('Google(Web): login');
                        });
                },
              ),
              SizedBox(
                height: 10,
              ),
// // Facebook 로그인
//               SignInButton(
//                 Buttons.Facebook,
//                 onPressed: () {
//                   signInWithFacebook().then((user) { //signInWithFacebookWeb / signInWithFacebook
//                     print('Facebook: login');
//                   });
//                 },
//               ),
//               SizedBox(
//                 height: 10,
//               ),
// // Email 로그인
//               SignInButton(
//                 Buttons.Email,
//                 onPressed: () async {
//                   print('------- Email authorization');
//                   await Get.to(() => Email()); //widget.user
//                 },
//               ),
            ],
          ),
        ),
      ),
    );
  }

  Future _handleSignIn() async {
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final authResult = await _auth.signInWithCredential(credential);
    final user = authResult.user;
    print(user);

    return user;
  }

  Future signInWithGoogleWeb() async {
    // Create a new provider
    var googleProvider = GoogleAuthProvider();

    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

    final authResult =
        await FirebaseAuth.instance.signInWithPopup(googleProvider);
    final user = authResult.user;

    return user;
  }

  // Future signInWithFacebook() async {
  //   final result = await _facebookSignIn.login();
  //
  //   // Create a credential from the access token
  //   final facebookAuthCredential = FacebookAuthProvider.credential(result.accessToken!.token);
  //
  //   // Once signed in, return the UserCredential
  //   final authResult = await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  //   final user = authResult.user;
  //
  //   return user;
  // }
  //
  // Future signInWithFacebookWeb() async {
  //   // Create a new provider
  //   var facebookProvider = FacebookAuthProvider();
  //
  //   facebookProvider.addScope('email');
  //   facebookProvider.setCustomParameters({
  //     'display': 'popup',
  //   });
  //
  //   final authResult = await FirebaseAuth.instance.signInWithPopup(facebookProvider);
  //   final user = authResult.user;
  //
  //   return user;
  // }

}

// 이메일 로그인 및 가입화면
class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final _email = TextEditingController();
  final _passWd = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _passWd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(38, 100, 100, 1.0),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          title:
              Text('Sign in with Email', style: TextStyle(color: Colors.white)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  controller: _email,
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  controller: _passWd,
                  obscureText: true,
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 120,
                    height: 40,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print('Log in --------------');
                        _login(
                            email: _email.text.trim(),
                            passWord: _passWd.text.trim());
                      },
                      label: Text("Log in"),
                      icon: Icon(Icons.login),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 40,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print('Sign up --------------');
                        _signUp(
                            email: _email.text.trim(),
                            passWord: _passWd.text.trim());
                      },
                      label: Text("Sign up"),
                      icon: Icon(Icons.edit),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  void myDialog({required String msg}) {
    Get.defaultDialog(
      title: "Notice",
      middleText: msg,
      backgroundColor: Colors.blue,
      titleStyle: TextStyle(color: Colors.white),
      middleTextStyle: TextStyle(color: Colors.white),
    );
  }

  void _signUp({required String email, required String passWord}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: passWord)
          .then((value) => Get.back(result: value));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak');
        myDialog(msg: 'The password provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email');
        myDialog(msg: 'The account already exists for that email');
      }
    } catch (e) {
      print('기타오류' + e.toString());
      myDialog(msg: e.toString());
    }
//
  }

  void _login({required String email, required String passWord}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: passWord)
          .then((value) => Get.back(result: value));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        print(e.code.toString());
        myDialog(msg: "Wrong email or Wrong password");
      }
    }
  }
}
