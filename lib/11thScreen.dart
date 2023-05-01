import 'package:academic_solution/Attendance.dart';
import 'package:academic_solution/DailyPractice.dart';
import 'package:academic_solution/Exam.dart';
import 'package:academic_solution/Notes.dart';
import 'package:academic_solution/syllabus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudyMaterial extends StatefulWidget {
  const StudyMaterial({Key? key}) : super(key: key);

  @override
  State<StudyMaterial> createState() => _StudyMaterialState();
}

class _StudyMaterialState extends State<StudyMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          children: [
            InkWell(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Syllabus()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset('assets/images/syllabus.png'),),
                  Text("SYLLABUS", style: TextStyle(color: Colors.black,fontSize: 5,fontWeight: FontWeight.bold)),
                ],
              ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendance()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset('assets/images/attendance.png'),),
                    Text("ATTENDANCE", style: TextStyle(color: Colors.black,fontSize: 5,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DailyPractice()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset('assets/images/D.P.P.png'),),
                    Text("D.P.P.", style: TextStyle(color: Colors.black,fontSize: 5,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Notes()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset('assets/images/notes.png'),),
                    Text("NOTES", style: TextStyle(color: Colors.black,fontSize: 5,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Exam()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset('assets/images/exam.png'),),
                    Text("EXAM", style: TextStyle(color: Colors.black,fontSize: 5,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10, crossAxisSpacing: 10),
        ),






























        // child: GridView(
        //   gridDelegate:
        //   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //   children: [
        //     Card(
        //       child: Column(
        //         children: [
        //           Center(child: Image.asset('assets/images/syllabus.png')),
        //           // Text('SYLLABUS',style: TextStyle(color: Colors.black,fontSize:5,fontWeight: FontWeight.bold)),
        //         ],
        //       ),
        //     ),
        //
        //     Card(
        //       child: Column(
        //         children: [
        //           Center(child: Image.asset('assets/images/attendance.png')),
        //           // Text('ATTENDANCE',style: TextStyle(color: Colors.black,fontSize: 5,fontWeight: FontWeight.bold)),
        //         ],
        //       ),
        //     ),
        //
        //     Card(
        //       child: Column(
        //         children: [
        //           Center(child: Image.asset('assets/images/D.P.P.png')),
        //           // Text('D.P.P.',style: TextStyle(color: Colors.black,fontSize: 5,fontWeight: FontWeight.bold)),
        //         ],
        //       ),
        //     ),
        //
        //     Card(
        //       child: Column(
        //         children: [
        //           Center(child: Image.asset('assets/images/notes.png')),
        //           // Text('NOTES',style: TextStyle(color: Colors.black,fontSize: 5,fontWeight: FontWeight.bold)),
        //         ],
        //       ),
        //     ),
        //
        //     Card(
        //       child:
        //           Center(child: Image.asset('assets/images/exam.png')),
        //           // Text('EXAM',style: TextStyle(color: Colors.black,fontSize: 5,fontWeight: FontWeight.bold)),
        //
        //     ),
        //   ],
        // ),


      ),
    );
  }
}

