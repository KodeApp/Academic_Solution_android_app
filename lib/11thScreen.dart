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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffdad2d2),
            ),
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    child:
                      Stack(
                        children: [
                          Positioned(
                              left: 0,
                              top: 0,
                              child:
                                 Align(
                                   child:
                                     SizedBox(
                                       width: 360,
                                     height: 120,
                                       child:
                                         Container(
                                           decoration: BoxDecoration(
                                             color: Color(0xff9f247d),
                                           ),
                                         ),
                                     ),
                                 ),
                          ),
                          Positioned(
                              left: 26,
                              top: 16,
                              child:
                                Align(
                                  child:
                                    SizedBox(
                                      width: 150,
                                      height: 78,
                                      child:
                                        Text(
                                          '11th Class\n Science',
                                          style: GoogleFonts.abel(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125,
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                    ),
                                ),
                          ),
                          Positioned(
                              left: 200,
                              top: 60,
                              child:
                                Align(
                                  child:
                                    SizedBox(
                                      width: 140,
                                      height: 96,
                                      child:
                                      Image.asset(
                                        'assets/images/main.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                ),
                          ),
                        ],
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            child:
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    width: 100,
                                    height: 80,
                                    child:
                                    Image.asset('assets/images/syllabus.png',
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 60,
                                    child:
                                    Image.asset('assets/images/syllabus.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            child:
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child:
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child:
                                          Text(
                                            'SYLLABUS',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.abel(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400,
                                              height: 12125,
                                              letterSpacing: 0.24,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                      ),
                                  ),
                                  Center(
                                    child:
                                      Text(
                                        'ATTENDANCE',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.abel(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          height: 12125,
                                          letterSpacing: 0.24,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                  )
                                ],
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            child:
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(15),
                                  width: 100,
                                  height: 80,
                                  child:
                                  Image.asset('assets/images/D.P.P.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 60,
                                  child:
                                  Image.asset('assets/images/notes.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            child:
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child:
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    child:
                                    Text(
                                      'D.P.P',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.abel(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        height: 12125,
                                        letterSpacing: 0.24,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child:
                                  Text(
                                    'NOTES',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                      height: 12125,
                                      letterSpacing: 0.24,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            width: 100,
                            height: 80,
                            child:
                            Image.asset('assets/images/exam.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child:
                            Text(
                              'Exam',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.abel(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                height: 12125,
                                letterSpacing: 0.24,
                                color: Color(0xff000000),
                              ),
                            ),
                          )
                        ],
                      ),
                  ),
                ],
              ),
          )
        ],
      ),
      // body: Container(
      //   child: GridView(
      //     gridDelegate:
      //     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //     children: [
      //       Card(
      //         child: Column(
      //           children: [
      //             Center(child: Image.asset('assets/images/syllabus.png')),
      //             Text('SYLLABUS',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
      //           ],
      //         ),
      //       ),
      //
      //       Card(
      //         child: Column(
      //           children: [
      //             Center(child: Image.asset('assets/images/attendance.png')),
      //             Text('ATTENDANCE',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
      //           ],
      //         ),
      //       ),
      //
      //       Card(
      //         child: Column(
      //           children: [
      //             Center(child: Image.asset('assets/images/D.P.P.png')),
      //             Text('D.P.P.',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
      //           ],
      //         ),
      //       ),
      //
      //       Card(
      //         child: Column(
      //           children: [
      //             Center(child: Image.asset('assets/images/notes.png')),
      //             Text('NOTES',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
      //           ],
      //         ),
      //       ),
      //
      //       Card(
      //         child: Column(
      //           children: [
      //             Center(child: Image.asset('assets/images/exam.png')),
      //             Text('EXAM',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
      //           ],
      //         ),
      //       ),
      //
      //
      //     ],
      //   ),
      // ),
    );
  }
}

