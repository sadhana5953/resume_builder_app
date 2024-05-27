import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_builder_app/home/utills/controllers/controllers.dart';

class example extends StatefulWidget {
  const example({super.key});

  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
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
          'Objective',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              fontSize: height * 0.030),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'You use this section as Career Objective or Summary. Both are all basically the same but, there are minor differences. Rename the section as per your choice.\n',
                style: TextStyle(
                    color: Color(0xFF6F73C8), fontSize: height * 0.020),
              ),
              Container(
                height: height * 10,
                margin: EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF363863),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.070,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF6F73C8),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Example',
                        style: TextStyle(
                            color: Colors.white, fontSize: height * 0.025),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          txtObjective.text = listOftext[0];
                        });
                      },
                      child: Container(
                        height: height * 0.180,
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFF6F73C8), width: 1))),
                        child: Text(
                          '${listOftext[0]}',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          txtObjective.text = listOftext[1];
                        });
                      },
                      child: Container(
                        height: height * 0.110,
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFF6F73C8), width: 1))),
                        child: Text(
                          '${listOftext[1]}',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          txtObjective.text = listOftext[2];
                        });
                      },
                      child: Container(
                        height: height * 0.180,
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFF6F73C8), width: 1))),
                        child: Text(
                          '${listOftext[2]}',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          txtObjective.text = listOftext[3];
                        });
                      },
                      child: Container(
                        height: height * 0.150,
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFF6F73C8), width: 1))),
                        child: Text(
                          '${listOftext[3]}',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          txtObjective.text = listOftext[0];
                        });
                      },
                      child: Container(
                        height: height * 0.180,
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFF6F73C8), width: 1))),
                        child: Text(
                          '${listOftext[0]}',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          txtObjective.text = listOftext[1];
                        });
                      },
                      child: Container(
                        height: height * 0.110,
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFF6F73C8), width: 1))),
                        child: Text(
                          '${listOftext[1]}',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          txtObjective.text = listOftext[2];
                        });
                      },
                      child: Container(
                        height: height * 0.180,
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFF6F73C8), width: 1))),
                        child: Text(
                          '${listOftext[2]}',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          txtObjective.text = listOftext[3];
                        });
                      },
                      child: Container(
                        height: height * 0.150,
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFF6F73C8), width: 1)),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        child: Text(
                          '${listOftext[3]}',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List listOftext = [
  'I am a highly driven recent business  school graduate seeking a full-time  position in  finance where I can lend  my knowledge of  market analytics to help  your organization  improve profitability.',
  'I seek challenging opportunities where I can  fully use my skills for the success of the organization.',
  'Dedicated and experienced accounting  professional with proven success managing  finances for mid-size commercial  organizations. Seeking an opportunity to  use my decade of experience to serve the  state goverment.',
  "To obtain an entry-level [industry] position  at a respected organization and utilize the  educational qualifications I've obtained at  [name of collage or university].",
];
