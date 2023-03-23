import 'package:academic_solution/signupScreen.dart';
import 'package:academic_solution/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'HomeScreen.dart';
import 'loginScreen.dart';
import 'signupScreen.dart';


  void main()  {

    runApp(MyApp());
  }


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: SplashScreen(),
      routes: {
        'loginScreen': (context) => LoginScreen(),
        'HomeScreen': (context) => HomeScreen()
      },
    );
  }
}






