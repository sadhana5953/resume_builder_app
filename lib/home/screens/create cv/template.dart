import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Template extends StatefulWidget {
  const Template({super.key});

  @override
  State<Template> createState() => _TemplateState();
}
Color _selectedColor = Colors.black;
List<Color> _colors = [Colors.red, Colors.indigo, Colors.blue, Colors.deepPurpleAccent, Colors.black];
class _TemplateState extends State<Template> {
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
          'Preview Template',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              fontSize: height * 0.030),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(8),
            height: height * 0.650,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Text('     Lee Jones',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.pink.shade50,
                      Colors.pink.shade100,
                      Colors.purpleAccent.shade100
                    ]),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.mail_outline_outlined,
                        size: 13,
                      ),
                      Text(
                        'abc@gmail.com...         ',
                        style: TextStyle(fontSize: 13),
                      ),
                      Icon(
                        Icons.call,
                        size: 13,
                      ),
                      Text(
                        '+00 000 000',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 400,
                      width: 150,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        Text('\nRParis, France',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Text('\nSkill          ',style: TextStyle(color: _selectedColor,fontWeight: FontWeight.bold,fontSize: 17),),
                        SizedBox(height: 10,),
                        Text('o Skill 1      ',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        SizedBox(height: 10,),
                        Text('o Skill 2      ',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        SizedBox(height: 10,),
                        Text('o Skill 3      ',style: TextStyle(color: Colors.grey,fontSize: 15),),
                        Text('\nEducation  ',style: TextStyle(color: _selectedColor,fontWeight: FontWeight.bold,fontSize: 17),),
                        Text('School Name    ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                        Text('\n     SCHOOL NAM      ',style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                        Text('     E COURSE 4.0 20  ',style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                        Text('15-2018             ',style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                      ],),
                    ),
                    Container(
                      height: 410,
                      width: 195,
                      decoration: BoxDecoration(color: Colors.black26),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 160,
                            margin: EdgeInsets.only(top: 10,left: 15,right: 15),
                            color: Colors.white,
                            child: Row(children: [
                              Container(height: 90,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: 5,decoration: BoxDecoration(color: Colors.pinkAccent.shade200,borderRadius: BorderRadius.circular(25)),),
                              Column(
                                children: [
                                  Text('Objective             ',style: TextStyle(fontWeight: FontWeight.bold,color: _selectedColor),),
                                  Text(' Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.\n Curabitur vitae turpis ac mi \n tincidunt sagittis et non\n tellus. Duis porta \n dapibus consectetur.',style: TextStyle(fontSize: height*0.010,fontWeight: FontWeight.w500,color: Colors.grey.shade600),),
                                ],
                              ),

                            ],),
                          ),
                          Container(
                            height: 292,
                            width: 160,
                            margin: EdgeInsets.only(top: 8,left: 15,right: 15),
                            color: Colors.white,
                            child: Row(children: [
                              Container(height: 270,
                              margin: EdgeInsets.only(top: 25,left: 5,right: 5),
                              width: 5,decoration: BoxDecoration(color: Colors.pinkAccent.shade200,borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5))),),
                              Column(
                                children: [
                                  Text('Experience             ',style: TextStyle(fontWeight: FontWeight.bold,color: _selectedColor),),
                                  Text('\n01/01/2013 : 01/01/2014',style: TextStyle(fontSize: height*0.012,fontWeight: FontWeight.w500,color: Colors.grey.shade600)),
                                  Text('\nCompany Name          ',style: TextStyle(fontSize: height*0.015,fontWeight: FontWeight.w500,color: Colors.grey.shade600)),
                                  Text('\nJob Name                   ',style: TextStyle(fontSize: height*0.015,fontWeight: FontWeight.w500,color: Colors.grey.shade600)),
                                  Text('\nLorem ipsum dolor sit amet, \nconsectetur adipiscing elit.',style: TextStyle(fontSize: height*0.012,fontWeight: FontWeight.w500,color: Colors.grey.shade600)),
                                  Text('\n01/01/2013 : 01/01/2014',style: TextStyle(fontSize: height*0.012,fontWeight: FontWeight.w500,color: Colors.grey.shade600)),
                                  Text('\nCompany Name          ',style: TextStyle(fontSize: height*0.015,fontWeight: FontWeight.w500,color: Colors.grey.shade600)),
                                  Text('\nJob Name                   ',style: TextStyle(fontSize: height*0.015,fontWeight: FontWeight.w500,color: Colors.grey.shade600)),
                                  Text('\nLorem ipsum  adipiscing elit.',style: TextStyle(fontSize: height*0.012,fontWeight: FontWeight.w500,color: Colors.grey.shade600)),
                                ],
                              ),

                            ],),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.045,),
          Row(children: [
            SizedBox(width: width*0.2,),
            ...List.generate(_colors.length, (index) => buildGestureDetector(height, width,_colors[index]),)
          ],),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/profile');
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
                'Continue',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildGestureDetector(double height, double width,Color color) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedColor=color;
        });
      },
      child: Container(
        height: height*0.0400,
        width: width*0.090,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color
        ),
      ),
    );
  }
}

