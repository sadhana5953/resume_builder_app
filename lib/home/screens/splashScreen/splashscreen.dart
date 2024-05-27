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
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
         Container(
           height: hh*0.250,
           width: ww*0.400,
           padding: EdgeInsets.only(top: hh*0.020),
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('assets/images/cv2.jpg'),fit: BoxFit.fill),
             borderRadius: BorderRadius.circular(25),
             color: Colors.white
           ),
           
         ),
           SizedBox(
             height: hh*0.05,
           ),
           Text('CV Macker',style: TextStyle(fontSize: 40,color: Colors.white,fontStyle: FontStyle.italic),),
           SizedBox(
             height: hh*0.250,
           ),
           FilledButton(onPressed: (){
             Navigator.of(context).pushNamed('/home');
           }, child: Text('Continue',style: TextStyle(fontSize: 22),)),
           SizedBox(
             height: hh*0.050,
           ),
       ],),
     ),
    );
  }
}
