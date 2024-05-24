import 'package:flutter/material.dart';
import 'package:resume_builder_app/home/screens/create%20cv/cv.dart';
import 'package:resume_builder_app/home/screens/create%20cv/preview_template.dart';
import 'package:resume_builder_app/home/screens/detail/detail.dart';
import 'package:resume_builder_app/home/screens/education/education.dart';
import 'package:resume_builder_app/home/screens/experience/experience.dart';
import 'package:resume_builder_app/home/screens/homeScreen/homescreen.dart';
import 'package:resume_builder_app/home/screens/objective/example.dart';
import 'package:resume_builder_app/home/screens/objective/objective.dart';
import 'package:resume_builder_app/home/screens/personal%20information/information.dart';
import 'package:resume_builder_app/home/screens/profile/profileScreen.dart';
import 'package:resume_builder_app/home/screens/profile/switchScreen.dart';
import 'package:resume_builder_app/home/screens/reference/reference.dart';
import 'package:resume_builder_app/home/screens/skills/skill.dart';
import 'package:resume_builder_app/home/screens/splashScreen/splashscreen.dart';

class resumeRoute
{
  static Map<String,Widget Function(BuildContext)>routes= {
  '/':(context) => homeScreen(),
  '/cv':(context) => cv(),
  '/template':(context) => template(),
  '/detail':(context) => detail(),
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
  '/splash':(context) => SplashScreen(),
  };
}