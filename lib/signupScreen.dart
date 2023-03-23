// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// import 'loginScreen.dart';
//
// final FirebaseAuth _auth = FirebaseAuth.instance;
//
// class SignupScreen extends StatefulWidget {
//   @override
//   SignupScreenState createState() => SignupScreenState();
// }
//
// class SignupScreenState extends State<SignupScreen>{
//
//   var options = [
//     'Student',
//     'Faculty',
//     'Clerk',
//     'Accountant'
//   ];
//   var _currentItemSelected = "Student";
//   //role
//   var rool = "Student";
//
//   Widget buildEmail(){
//     return Column(
//
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         const Text(
//           'Email',
//           style: TextStyle(
//             color: Color(0xFFFFFFFF),
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 10),
//         Container(
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//               color: Color(0xFFFFFFFF),
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                     color: Color(0x42000000),
//                     blurRadius: 6,
//                     offset: Offset(0,2)
//                 )
//               ]
//           ),
//           height: 60,
//           child:
//           const TextField(
//             keyboardType: TextInputType.emailAddress,
//             style: TextStyle(
//                 color: Color(0xDD000000)
//             ),
//             decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(top: 14),
//                 prefixIcon: Icon(
//                     Icons.email,
//                     color: Color(0xff51c18e)
//                 ),
//                 hintText: 'Email',
//                 hintStyle: TextStyle(
//                     color: Color(0x61000000)
//                 )
//
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget buildPassword(){
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         const Text(
//           'Password',
//           style: TextStyle(
//             color: Color(0xFFFFFFFF),
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 10),
//         Container(
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//               color: Color(0xFFFFFFFF),
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                     color: Color(0x42000000),
//                     blurRadius: 6,
//                     offset: Offset(0,2)
//                 )
//               ]
//           ),
//           height: 60,
//           child:
//           const TextField(
//             obscureText: true,
//             style: TextStyle(
//                 color: Color(0xDD000000)
//             ),
//             decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(top: 14),
//                 prefixIcon: Icon(
//                     Icons.lock,
//                     color: Color(0xff51c18e)
//                 ),
//                 hintText: 'Password',
//                 hintStyle: TextStyle(
//                     color: Color(0x61000000)
//                 )
//
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//
//
//
//   Widget buildLoginBtn(){
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 25),
//       width: double.infinity,
//       child: ElevatedButton(
//           onPressed: () => print('Login Pressed'),
//           style: ElevatedButton.styleFrom(
//             padding: EdgeInsets.all(15),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15)
//             ),
//             backgroundColor: Color(0xFFFFFFFF),
//           ),
//           child:
//           const Text(
//             'Login',
//             style: TextStyle(
//                 color: Color(0xff5ac18e),
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold
//             ),
//           )
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//           value: SystemUiOverlayStyle.light,
//           child:
//           GestureDetector(
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   height: double.infinity,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter,
//                           colors: [
//                             Color(0x665ac18e),
//                             Color(0x995ac18e),
//                             Color(0xcc5ac18e),
//                             Color(0xff5ac18e),
//                           ]
//                       )
//                   ),
//                   child: SingleChildScrollView(
//                     physics: AlwaysScrollableScrollPhysics(),
//                     padding: EdgeInsets.symmetric(
//                         horizontal: 25,
//                         vertical: 120
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         const Text(
//                           'SignUp',
//                           style: TextStyle(
//                             color: Color(0xFFFFFFFF),
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             "Rool : ",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           DropdownButton<String>(
//                             dropdownColor: Colors.blue[900],
//                             isDense: true,
//                             isExpanded: false,
//                             iconEnabledColor: Colors.white,
//                             focusColor: Colors.white,
//                             items: options.map((String dropDownStringItem) {
//                               return DropdownMenuItem<String>(
//                                 value: dropDownStringItem,
//                                 child: Text(
//                                   dropDownStringItem,
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20,
//                                   ),
//                                 ),
//                               );
//                             }).toList(),
//                             onChanged: (newValueSelected) {
//                               setState(() {
//                                 _currentItemSelected = newValueSelected!;
//                                 rool = newValueSelected;
//                               });
//                             },
//                             value: _currentItemSelected,
//                           ),
//                         ],
//                       ),
//
//                         SizedBox(height: 20),
//                         SizedBox(height: 50),
//                         buildEmail(),
//                         SizedBox(height: 20),
//                         buildPassword(),
//                         buildLoginBtn(),
//                       ],
//                     ),
//                   ),
//
//                 )
//               ],
//             ),
//
//           )
//
//
//       ),
//
//     );
//   }
//
//  }