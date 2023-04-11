import 'package:academic_solution/signupScreen.dart';
import 'package:academic_solution/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'signupScreen.dart';
import '11thScreen.dart';

class LoginScreen extends StatefulWidget {

  @override
   LoginScreenState createState() => LoginScreenState();
}



class LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  var email = "";
  var password= "";

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){

    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool isRememberMe = false;

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                  BoxShadow(
                    color: Color(0x42000000),
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child:
          const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Color(0xDD000000)
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff51c18e)
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Color(0x61000000)
                )


            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
         Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Color(0x42000000),
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child:
          const TextField(
            obscureText: true,
            style: TextStyle(
                color: Color(0xDD000000)
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff51c18e)
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Color(0x61000000)
                )

            ),
          ),
        )
      ],
    );
  }

  Widget buildRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
              data: ThemeData(unselectedWidgetColor: Color(0xFFFFFFFF)),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Color(0xFF4CAF50),
                activeColor: Color(0xFFFFFFFF),
                onChanged: (value){
                  setState(() {
                    isRememberMe = value!;
                  });
                },
              ),
          ),
          const Text(
            'Remember Me',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn(){
    return GestureDetector(

      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context,'HomePage');
          },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          backgroundColor: Color(0xFFFFFFFF),
      ),
        child:
        const Text(
          'Login',
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        )
      ),
    );
  }

  Widget buildSignUpBtn(){
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,'signupScreen');
      },
      child: RichText(
        text:
        const TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account?',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            )
          ]
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        key: _formkey,
        value: SystemUiOverlayStyle.light,
        child:
        GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildSignUpBtn(),
                    ],
                  ),
                ),

              )
            ],
          ),

    )


      ),

    );
  }

}

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

