


import 'package:academic_solution/HomeScreen.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'forgot.dart';

import 'register.dart';



class LoginScreen extends StatefulWidget {

  @override
   LoginScreenState createState() => LoginScreenState();
}



class LoginScreenState extends State<LoginScreen> {

  bool _isObscure3 = true;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color:  Colors.orangeAccent[700],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.70,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Email',
                            enabled: true,
                            contentPadding: const EdgeInsets.only(
                              left: 14.0,bottom: 8.0,top: 8.0
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value){
                            if (value!.length == 0) {
                              return "Email cannot be empty";
                            }
                            if (!RegExp(
                                   "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return ("Please enter a valid email");
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                         TextFormField(
                           controller: passwordController,
                           obscureText: _isObscure3,
                           decoration: InputDecoration(
                             suffixIcon: IconButton(
                                icon: Icon(_isObscure3
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                     _isObscure3 = !_isObscure3;
                                  });
                                  }),
                             filled: true,
                             fillColor: Colors.white,
                             hintText: 'Password',
                             enabled:  true,
                             contentPadding: const EdgeInsets.only(
                                 left: 14.0, bottom: 8.0, top: 15.0),
                             focusedBorder: OutlineInputBorder(
                               borderSide: new BorderSide(color: Colors.white),
                               borderRadius: new BorderRadius.circular(10),
                             ),
                             enabledBorder: UnderlineInputBorder(
                               borderSide: new BorderSide(color: Colors.white),
                               borderRadius: new BorderRadius.circular(10),
                             ),
                          ),
                          validator: (value) {
                             RegExp regex = new RegExp(r'^.{6,}$');
                             if (value!.isEmpty) {
                               return "Password cannot be empty";
                             }
                             if (!regex.hasMatch(value)) {
                               return ("Please enter valid password min. 6 character");
                             } else {
                               return null;
                             }
                          },
                           onSaved: (value) {
                             passwordController.text = value!;
                           },
                           keyboardType: TextInputType.emailAddress,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => Forgotpass(),
                              ),
                            );
                          },
                          child: Text(
                            "Forgot Password ....",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                          elevation: 5.0,
                          height: 40,
                          onPressed: () {
                            setState(() {
                              visible = true;
                            });
                            signIn(
                                emailController.text, passwordController.text);
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: visible,
                            child: Container(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      elevation: 5.0,
                      height: 40,
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      color: Colors.blue[900],
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Made by",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEB",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.blue[900],
                          ),
                        ),
                        Text(
                          "FUN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.yellowAccent[400],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}
 //final _formkey = GlobalKey<FormState>();
//
//   var email = "";
//   var password= "";
//
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   @override
//   void dispose(){
//
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }
//
//   bool isRememberMe = false;
//
//   Widget buildEmail(){
//     return Column(
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
//          Container(
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
//   Widget buildRememberCb(){
//     return Container(
//       height: 20,
//       child: Row(
//         children: <Widget>[
//           Theme(
//               data: ThemeData(unselectedWidgetColor: Color(0xFFFFFFFF)),
//               child: Checkbox(
//                 value: isRememberMe,
//                 checkColor: Color(0xFF4CAF50),
//                 activeColor: Color(0xFFFFFFFF),
//                 onChanged: (value){
//                   setState(() {
//                     isRememberMe = value!;
//                   });
//                 },
//               ),
//           ),
//           const Text(
//             'Remember Me',
//             style: TextStyle(
//               color: Color(0xFFFFFFFF),
//               fontWeight: FontWeight.bold
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget buildLoginBtn(){
//     return GestureDetector(
//
//       child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => homepage()),
//             );
//           },
//       style: ElevatedButton.styleFrom(
//           padding: EdgeInsets.all(15),
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15)
//           ),
//           backgroundColor: Color(0xFFFFFFFF),
//       ),
//         child:
//         const Text(
//           'Login',
//           style: TextStyle(
//             color: Color(0xff5ac18e),
//             fontSize: 18,
//             fontWeight: FontWeight.bold
//           ),
//         )
//       ),
//     );
//   }
//
//   Widget buildSignUpBtn(){
//     return GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context,'signupScreen');
//       },
//       child: RichText(
//         text:
//         const TextSpan(
//           children: [
//             TextSpan(
//               text: 'Don\'t have an Account?',
//               style: TextStyle(
//                 color: Color(0xFFFFFFFF),
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500
//               )
//             ),
//             TextSpan(
//               text: 'Sign Up',
//               style: TextStyle(
//                 color: Color(0xFFFFFFFF),
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold
//               )
//             )
//           ]
//         ),
//       ),
//     );
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//         key: _formkey,
//         value: SystemUiOverlayStyle.light,
//         child:
//         GestureDetector(
//           child: Stack(
//             children: <Widget>[
//               Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Color(0x665ac18e),
//                       Color(0x995ac18e),
//                       Color(0xcc5ac18e),
//                       Color(0xff5ac18e),
//                     ]
//                   )
//                 ),
//                 child: SingleChildScrollView(
//                   physics: AlwaysScrollableScrollPhysics(),
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 25,
//                     vertical: 120
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       const Text(
//                         'Sign In',
//                         style: TextStyle(
//                           color: Color(0xFFFFFFFF),
//                           fontSize: 40,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 50),
//                       buildEmail(),
//                       SizedBox(height: 20),
//                       buildPassword(),
//                       buildRememberCb(),
//                       buildLoginBtn(),
//                       buildSignUpBtn(),
//                     ],
//                   ),
//                 ),
//
//               )
//             ],
//           ),
//
//     )
//
//
//       ),
//
//     );
//   }
//
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//
//   final _formkey = GlobalKey<FormState>();
//
//   var email = "";
//   var password= "";
//
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   @override
//   void dispose(){
//
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("User Login"),
//       ),
//       body: Form(
//         key: _formkey,
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 20,
//           horizontal: 30),
//           child:ListView(
//             children: [
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 10.0),
//                 child: TextFormField(
//                   autofocus: false,
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     labelStyle: TextStyle(fontSize: 20.0),
//                     border: OutlineInputBorder(),
//                     errorStyle:
//                         TextStyle(color: Colors.redAccent,
//                          fontSize: 15),
//                  ),
//                  controller: emailController,
//                  validator: (value){
//                     if (value == null || value.isEmpty){
//                       return 'Please Enter Email';
//                     } else if (!value.contains('@')){
//                       return 'Please Enter Valid Email';
//                     }
//                     return null;
//                  },
//                ),
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 10.0),
//                 child: TextFormField(
//                   autofocus: false,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     labelStyle: TextStyle(fontSize: 20.0),
//                     border: OutlineInputBorder(),
//                     errorStyle:
//                     TextStyle(color: Colors.redAccent,
//                         fontSize: 15),
//                   ),
//                   controller: passwordController,
//                   validator: (value){
//                     if (value == null || value.isEmpty){
//                       return 'Please Enter Password';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 60.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//
//     ],
//               )
//     )
//     ],
//     )
//       ),
//     )
//     );
//
//   }
// }

//}