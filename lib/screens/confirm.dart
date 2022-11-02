// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled/screens/app.dart';
// import 'package:untitled/screens/question.dart';
//
// import 'loginConfirm.dart';
//
// class ConfirmScreen extends StatelessWidget {
//   const ConfirmScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: Firebase.initializeApp(),
//       builder: (context, snapshot) {
//         //snapshot 경우의 수에 따라 페이지 전개가 달라짐
//         if (snapshot.hasError) {
//           return Center(
//             child: Text("firebase load fail"), // 에러 대응
//           );
//         }
//         if (snapshot.connectionState == ConnectionState.done) {
//           return LoginConfirm();
//         }
//         return CircularProgressIndicator();
//       },
//     );
//   }
// }
//
