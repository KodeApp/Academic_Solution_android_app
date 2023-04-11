


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '11thScreen.dart';
import '12thScreen.dart';
import 'FeeScreen.dart';
import 'HomePage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Widget buildFee(){
  //   return GestureDetector(
  //
  //     child: ElevatedButton(
  //         onPressed: () {
  //           Navigator.pushNamed(context,'FeeScreen');
  //         },
  //         style: ElevatedButton.styleFrom(
  //           padding: EdgeInsets.all(15),
  //           shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(15)
  //           ),
  //           backgroundColor:Colors.redAccent,
  //         ),
  //         child:
  //         const Text(
  //           'Fees',
  //           style: TextStyle(
  //               color: Color(0xff5ac18e),
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold
  //           ),
  //         )
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  //     backgroundColor: Colors.white,
  //   //   body: Column(
  //   //     children: [
  //   //       Container(
  //   //         height: 250,
  //   //         decoration: BoxDecoration(
  //   //           borderRadius: BorderRadius.only(
  //   //             bottomRight: Radius.circular(50),
  //   //           ),
  //   //           color:Color(0xFF363f93),
  //   //         ),
  //   //         child: Stack(
  //   //           children: [
  //   //             Positioned(
  //   //                 top: 50,
  //   //                 left: 0,
  //   //                 child: Container(
  //   //                   height: 150,
  //   //                   width: 500,
  //   //                   decoration: BoxDecoration(
  //   //                     color: Colors.white,
  //   //                     borderRadius: BorderRadius.only(
  //   //                       topRight: Radius.circular(50),
  //   //                       bottomRight: Radius.circular(50),
  //   //                     )
  //   //                   ),
  //   //                 child: Stack(
  //   //                   children[
  //   //                   Positioned(
  //   //                   top: 110,
  //   //                   left: 20,
  //   //                    child: Text("Class 11th & 12th Science", style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
  //   //                   ),
  //   //                   child:Stack
  //   //                  Positioned(
  //   //                 top: 120,
  //   //                 left: 700,
  //   //                 child: Container(
  //   //                   // onPressed: () {
  //   //                   //   Navigator.pushNamed(context,'11thScreen');
  //   //                   // },
  //   //                   // child: Container(
  //   //                   width: 150,
  //   //                   height: 150,
  //   //                   child: Image.asset('assets/images/main.png')
  //   //                   )
  //   //                   )
  //   //                 ),
  //   //
  //   //                 ],
  //   //                 ),
  //   //
  //   //
  //   //             )
  //   //
  //   //
  //   //         ),
  //   //
  //   //
  //   //     ],
  //   //
  //   //   )
  //   //
  //   // ),
  //   //     ],
  //   // )
  //
  //    body: Container
  //      (child: Padding(
  //      padding: const EdgeInsets.all(10.0),
  //      child: GridView(
  //        children: [
  //          InkWell(
  //            onTap: (){
  //              Navigator.push(context, MaterialPageRoute(builder: (context)=> StudyMaterial()));
  //            },
  //          child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.redAccent),
  //          child: Column(
  //            mainAxisAlignment: MainAxisAlignment.center,
  //            children: [
  //            Text('11th Class',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))
  //          ],
  //          ),
  //          ),
  //          ),
  //          InkWell(
  //            onTap: (){
  //              Navigator.push(context, MaterialPageRoute(builder: (context)=> studymaterial()));
  //            },
  //            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.redAccent),
  //            child: Column(
  //              mainAxisAlignment: MainAxisAlignment.center,
  //              children: [
  //              Text('12th Class',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))
  //            ],
  //          ),
  //            ),
  //          ),
  //
  //        ],
  //        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 20),
  //      ),
  //
  //    ),
  //
  //    ),
  //

    );

  }

}




