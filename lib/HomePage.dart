import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '11thScreen.dart';
import '12thScreen.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    width: 374,
                    height: 180,
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
                                      width: 374,
                                      height: 143,
                                      child:
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff9f257d),
                                          ),
                                        ),
                                    ),

                          ),
                          ),
                          Positioned(
                              left: 17,
                              top: 20.5,
                              child:
                                Align(
                                  child: 
                                    SizedBox(
                                      width: 347,
                                      height: 143,
                                      child: 
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff9f257d),
                                          ),
                                        ),
                                    ),
                                ),
                          ),
                          Positioned(
                              left: 17,
                              top: 20.5,
                              child:
                                Align(
                                  child:
                                    SizedBox(
                                      width: 270,
                                      height: 78,
                                      child:
                                        Text(
                                          'Class 11th & 12th \nScience',
                                          style: GoogleFonts.roboto (
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125,
                                            fontStyle: FontStyle.italic,
                                            letterSpacing: 0.2,
                                            color: Color(0xffffffff),

                                          ),
                                        ),
                                    ),
                                ),
                          ),
                          Positioned(
                              left: 204,
                              top: 72,
                              child:
                                Align(
                                  child:
                                    SizedBox(
                                      width: 142,
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
                    margin: EdgeInsets.all(15),
                    child:
                      Text(
                        'Choose Your Class',
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          height: 1.2125,
                          letterSpacing: 0.2,
                          color: Color(0xff000000),
                        ),
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
                            height: 113,
                            child:
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    padding: EdgeInsets.all(15),
                                    width: 119,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xfffe9999),
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          offset: Offset(0,4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child:
                                      Center(
                                        child:
                                          Center(
                                            child:
                                              Container(
                                                constraints: BoxConstraints (
                                                  maxWidth: 65,
                                                ),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pushNamed(context,'11thScreen');
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    padding: EdgeInsets.all(15),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(15)
                                                    ),
                                                    backgroundColor: Color(0xFFFFFFFF),
                                                  ),
                                                child:
                                                  Text(
                                                    '11th Class',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 24,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125,
                                                      letterSpacing: 0.48,
                                                      color: const Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ),
                                      ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    width: 8,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    width: 119,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xfffe9999),
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child:
                                      Center(
                                        child:
                                          Center(
                                            child:
                                              SizedBox(
                                                child:
                                                  Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: 65,
                                                    ),
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pushNamed(context,'12thScreen');
                                                      },
                                                      style: ElevatedButton.styleFrom(
                                                        padding: EdgeInsets.all(15),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(15)
                                                        ),
                                                        backgroundColor: Color(0xFFFFFFFF),
                                                      ),
                                                    child:
                                                      Text(
                                                        '12th \nClass',
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.roboto(
                                                          fontSize: 24,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.2125,
                                                          letterSpacing: 0.48,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                          ),
                                      ),
                                  )

                                ],
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child:
                              Center(
                                child:
                                  Text(
                                    'Fees',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125,
                                      letterSpacing: 0.24,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child:
                              Center(
                                child:
                                  Center(
                                    child:
                                      Text(
                                        'Bonafied Request',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125,
                                          letterSpacing: 0.24,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                  ),
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child:
                              Center(
                                child:
                                  Center(
                                    child:
                                      Text(
                                        'Feedback',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125,
                                          letterSpacing: 0.24,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                  ),
                              ),
                          )
                        ],
                      ),

                  )
                ],
              )



          )

        ]
      )

    );

  }
}
