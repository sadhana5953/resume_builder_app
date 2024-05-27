import 'package:flutter/material.dart';
import 'package:resume_builder_app/home/screens/Activities/activity.dart';
import 'package:resume_builder_app/home/screens/create%20cv/cv.dart';
import 'package:resume_builder_app/home/screens/create%20cv/preview_template.dart';
import 'package:resume_builder_app/home/screens/create%20cv/template.dart';
import 'package:resume_builder_app/home/screens/detail/detail.dart';
import 'package:resume_builder_app/home/screens/detail/pdf.dart';
import 'package:resume_builder_app/home/screens/education/education.dart';
import 'package:resume_builder_app/home/screens/experience/experience.dart';
import 'package:resume_builder_app/home/screens/homeScreen/homescreen.dart';
import 'package:resume_builder_app/home/screens/interests/interest.dart';
import 'package:resume_builder_app/home/screens/languages/language.dart';
import 'package:resume_builder_app/home/screens/objective/example.dart';
import 'package:resume_builder_app/home/screens/objective/objective.dart';
import 'package:resume_builder_app/home/screens/personal%20information/information.dart';
import 'package:resume_builder_app/home/screens/profile/addScreen/add.dart';
import 'package:resume_builder_app/home/screens/profile/profileScreen.dart';
import 'package:resume_builder_app/home/screens/profile/switchScreen.dart';
import 'package:resume_builder_app/home/screens/reference/reference.dart';
import 'package:resume_builder_app/home/screens/skills/skill.dart';
import 'package:resume_builder_app/home/screens/splashScreen/splashscreen.dart';

class resumeRoute
{
  static Map<String,Widget Function(BuildContext)>routes= {
  '/':(context) => SplashScreen(),
  '/home':(context) => homeScreen(),
  '/cv':(context) => cv(),
  '/template':(context) => template(),
  '/Template':(context) => Template(),
  '/detail':(context) => detail(),
  '/Pdf':(context) => pdf(),
  '/profile':(context) => profileScreen(),
  '/switch':(context) => switchScreen(),
  '/info':(context) => informationScreen(),
  '/edu':(context) => educationScreen(),
  '/skill':(context) => SkillScreen(),
  '/experience':(context) => experience(),
  '/objective':(context) => objective(),
  '/example':(context) => example(),
  '/reference':(context) => reference(),
  '/home':(context) => homeScreen(),
  '/add':(context) => addScreen(),
  '/act':(context) => activities(),
  '/inte':(context) => interest(),
  '/language':(context) => language(),
  '/splash':(context) => SplashScreen(),
  };
}