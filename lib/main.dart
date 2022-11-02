import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/app.dart';
import 'package:untitled/screens/emotion.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/screens/login.dart';
import 'package:untitled/screens/modify.dart';
import 'package:get/get.dart';

Future<void> main() async {
  // 비동기 메소드 사용시 추가
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase 초기화
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: TabBarView(
              children: [
                LoginScreen(),
                HomeScreen(),
                ListScreen(),
              ],
            ),
            bottomNavigationBar: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.format_list_bulleted),
              ),
              Tab(
                icon: Icon(Icons.person),
              )
            ]),
          )),
    );
  }
}
