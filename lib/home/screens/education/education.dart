import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_builder_app/home/utills/controllers/controllers.dart';

class educationScreen extends StatefulWidget {
  const educationScreen({super.key});

  @override
  State<educationScreen> createState() => _educationScreenState();
}

GlobalKey<FormState> formkey = GlobalKey();

class _educationScreenState extends State<educationScreen> {
  void _clearText(int index) {
    educationList[index].txtYear!.clear();
    educationList[index].txtScore!.clear();
    educationList[index].txtDegree!.clear();
    educationList[index].txtSchool!.clear();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF363863),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            )),
        backgroundColor: Color(0xFF363863),
        title: Text(
          'Education',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              fontSize: height * 0.030),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Form(
              key: formkey,
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                      children: List.generate(
                    educationList.length,
                    (index) => Container(
                      height: height * 0.600,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                      color: Color(0xFF363863),
                      child: buildColumn(
                          height: height,
                          width: width,
                          index: index,
                          controller1: educationList[index].txtDegree!,
                          controller2: educationList[index].txtSchool!,
                          controller3: educationList[index].txtScore!,
                          controller4: educationList[index].txtYear!),
                    ),
                  )),
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.190,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                width: width * 0.001,
                color: Color(0xFF2F3154),
              )),
              color: Color(0xFF363863),
            ),
            alignment: Alignment.center,
            child: Wrap(
              children: [
                GestureDetector(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      if(temp==1)
                      {
                        ch=0;
                        Navigator.of(context).pushNamed('/detail');
                      }
                      else
                      {
                        ch=0;
                        Navigator.of(context).pushNamed('/Pdf');
                      }
                    }
                  },
                  child: Container(
                    height: height * 0.055,
                    width: width * 0.450,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF6F73C8), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.remove_red_eye_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          '  Preview',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.025),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      TextEditingController txtDegree = TextEditingController();
                      TextEditingController txtScore = TextEditingController();
                      TextEditingController txtSchool = TextEditingController();
                      TextEditingController txtYear = TextEditingController();
                      educationList.add(educationModel(
                          txtSchool: txtSchool,
                          txtDegree: txtDegree,
                          txtScore: txtScore,
                          txtYear: txtYear));
                    });
                  },
                  child: Container(
                    height: height * 0.055,
                    width: width * 0.450,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF6F73C8), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          '  Add',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.025),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: height * 0.060,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        top: height * 0.015,
                        right: width * 0.030,
                        left: width * 0.030),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF6F73C8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildColumn(
      {required double height,
      required double width,
      required int index,
      required TextEditingController controller1,
      required TextEditingController controller2,
      required TextEditingController controller3,
      required TextEditingController controller4}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '    Education ${index + 1}',
              style: TextStyle(color: Colors.white, fontSize: height * 0.022),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    if (index != 0) {
                      educationList.removeAt(index);
                    } else {
                      _clearText(index);
                    }
                  });
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 25,
                ))
          ],
        ),
        Text(
          "    Course / Degree",
          style: TextStyle(color: Colors.white, fontSize: height * 0.022),
        ),
        Container(
          height: height*0.085,
          width: width*0.83,
          margin: EdgeInsets.only(left: 17,top: 5,bottom: 8),
          child: TextFormField(
              controller: controller1,
              style: TextStyle(color: Colors.white),
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                    BorderSide(color: Color(0xFF6F73C8), width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFF6F73C8), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFF6F73C8), width: 2.5)),
              ),
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return "Can't be left blank";
                }
              }),
        ),
        Text(
          '    School / University',
          style: TextStyle(color: Colors.white, fontSize: height * 0.022),
        ),
        Container(
          height: height*0.085,
          width: width*0.83,
          margin: EdgeInsets.only(left: 17,top: 5,bottom: 8),
          child: TextFormField(
              controller: controller2,
              style: TextStyle(color: Colors.white),
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                    BorderSide(color: Color(0xFF6F73C8), width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFF6F73C8), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFF6F73C8), width: 2.5)),
              ),
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return "Can't be left blank";
                }
              }),
        ),
        Text(
          '    Grade / Score',
          style: TextStyle(color: Colors.white, fontSize: height * 0.022),
        ),
        Container(
          height: height*0.085,
          width: width*0.83,
          margin: EdgeInsets.only(left: 17,top: 5,bottom: 8),
          child: TextFormField(
              controller: controller3,
              style: TextStyle(color: Colors.white),
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                    BorderSide(color: Color(0xFF6F73C8), width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFF6F73C8), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFF6F73C8), width: 2.5)),
              ),
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return "Can't be left blank";
                }
              }),
        ),
        Text(
          '    Year',
          style: TextStyle(color: Colors.white, fontSize: height * 0.022),
        ),
        Container(
          height: height*0.085,
          width: width*0.83,
          margin: EdgeInsets.only(left: 17,top: 5,bottom: 8),
          child: TextFormField(
              controller: controller4,
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFF6F73C8), width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFF6F73C8), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFF6F73C8), width: 2.5)),
              ),
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return "Can't be left blank";
                }
              }),
        ),
      ],
    );
  }
}

class educationModel {
  TextEditingController? txtDegree;
  TextEditingController? txtSchool;
  TextEditingController? txtScore;
  TextEditingController? txtYear;

  educationModel({this.txtSchool, this.txtDegree, this.txtScore, this.txtYear});
}

List<educationModel> educationList = [
  educationModel(
      txtScore: txtScrore,
      txtYear: txtYear,
      txtDegree: txtDegree,
      txtSchool: txtSchool),
];

TextEditingController txtDegree = TextEditingController();
TextEditingController txtScrore = TextEditingController();
TextEditingController txtSchool = TextEditingController();
TextEditingController txtYear = TextEditingController();
