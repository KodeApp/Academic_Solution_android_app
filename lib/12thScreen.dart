import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class studymaterial extends StatefulWidget {
  const studymaterial({Key? key}) : super(key: key);

  @override
  State<studymaterial> createState() => _studymaterialState();
}

class _studymaterialState extends State<studymaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Card(
              child: Center(child: Image.asset('assets/images/syllabus.png')),
            ),
            Card(
              child: Center(child: Image.asset('assets/images/attendance.png')),
            ),
            Card(
              child: Center(child: Image.asset('assets/images/D.P.P.png')),

            ),
            Card(
              child: Center(child: Image.asset('assets/images/notes.png')),

            ),
            Card(
              child: Center(child: Image.asset('assets/images/exam.png')),

            ),
          ],
        ),
      ),
    );
  }
}
