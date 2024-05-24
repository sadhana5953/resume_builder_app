import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void next()
  {
    FilledButton(child: Text('Continue'),onPressed: (){},);
  }
  void initState()
  {
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      next();
    });
  }
  @override
  Widget build(BuildContext context) {
    double hh=MediaQuery.of(context).size.height;
    double ww=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF363863),
     // body: Center(
     //   child: Column(
     //     mainAxisAlignment: MainAxisAlignment.end,
     //     children: [
     //     Container(
     //       height: hh*0.250,
     //       width: ww*0.550,
     //       decoration: BoxDecoration(
     //         borderRadius: BorderRadius.circular(10),
     //         color: Colors.blue
     //       ),
     //     ),
     //       RichText(text: TextSpan(children: [
     //         TextSpan(text: '\nJust three ',style: TextStyle(color: Colors.grey.shade800,fontSize: 27,fontWeight: FontWeight.bold)),
     //         TextSpan(text: 'simple ',style: TextStyle(color: Colors.indigo,fontSize: 27,fontWeight: FontWeight.bold)),
     //         TextSpan(text: 'steps\n',style: TextStyle(color: Colors.grey.shade800,fontSize: 27,fontWeight: FontWeight.bold)),
     //       ])),
     //       Text('1️⃣ Select a template design',style: TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.w500)),
     //       SizedBox(height: hh*0.01,),
     //       Text('2️⃣ Build your resume           ',style: TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.w500)),
     //       SizedBox(height: hh*0.01,),
     //       Text('3️⃣ Save, share & download ',style: TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.w500)),
     //       SizedBox(
     //         height: hh*0.2,
     //       ),
     //       GestureDetector(
     //         onTap: (){
     //           Navigator.of(context).pushNamed('/home');
     //         },
     //         child: Container(
     //           height: hh*0.07,
     //           width: ww*0.8,
     //           decoration: BoxDecoration(
     //             borderRadius: BorderRadius.circular(50),
     //             color: Colors.blue
     //           ),
     //           alignment: Alignment.center,
     //           child: Text('Get Started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
     //         ),
     //       ),
     //       SizedBox(
     //         height: hh*0.05,
     //       ),
     //   ],),
     // ),
    );
  }
}
