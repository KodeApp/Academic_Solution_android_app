import 'package:academic_solution/Attendance.dart';
import 'package:academic_solution/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'HomeScreen.dart';
import 'loginScreen.dart';
import '11thScreen.dart';
import '12thScreen.dart';
import 'HomePage.dart';
import 'syllabus.dart';
import 'Notes.dart';
import 'DailyPractice.dart';
import 'Exam.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        'HomePage' : (context) => homepage(),
        // 'HomeScreen': (context) => HomeScreen(),
        '11thScreen' : (context) => StudyMaterial(),
        '12thScreen' : (context) => studymaterial(),
        'syllabus' : (context) => Syllabus(),
        'Attendance' : (context)=> Attendance(),
        'DailyPractice' :(context)=> DailyPractice(),
        'Notes' :(context)=> Notes(),
        'Exam' :(context)=> Exam(),

      },
    );
  }
}






