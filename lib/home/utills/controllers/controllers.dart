import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';

// todo personal information
class About {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
}

// todo skill
TextEditingController txtSkill = TextEditingController();
List listOfSkill = [txtSkill];

//todo activities
TextEditingController txtActivity = TextEditingController();
List listOfActivitis = [txtActivity];

//todo interest
TextEditingController txtInterest = TextEditingController();
List l1 = [txtInterest];

// todo languages
TextEditingController txtLanguage = TextEditingController();
List listOfLanguage = [txtLanguage];

// todo objective
TextEditingController txtObjective = TextEditingController();

bool photo = true;
bool dob = false;
bool nationality = false;
bool status = false;
bool web = false;
bool linkedin = false;
bool facebook = false;
bool twitter = false;

bool interest = true;
bool award = false;
bool activities = true;
bool publication = false;
bool languages = true;
bool info = false;
bool projects = false;
bool reference = true;
bool signature = false;

Color selectedColor = Colors.indigo;
int ch=0;
int temp=0;