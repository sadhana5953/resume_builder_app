import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_builder_app/home/utills/Lists/switchList.dart';
import 'package:resume_builder_app/home/utills/controllers/controllers.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
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
          'Sections',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_mark_rounded,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 350,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30,bottom: 15,left: 10,right: 10),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF30325D),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Sections',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.030,
                                fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/info');
                                  },
                                  child: buildContainer(
                                      height: height,
                                      width: width,
                                      icons: Icons.person,
                                      icons2: Icons.arrow_circle_right,
                                      text: 'Personal')),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/edu');
                                  },
                                  child: buildContainer(
                                      height: height,
                                      width: width,
                                      icons: Icons.school,
                                      icons2: Icons.arrow_circle_right,
                                      text: 'Education')),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/experience');
                                },
                                child: buildContainer(
                                    height: height,
                                    width: width,
                                    icons: Icons.work,
                                    icons2: Icons.arrow_circle_right,
                                    text: 'Experience'),
                              ),
                              SizedBox(
                                height: height * 0.020,
                                width: double.infinity,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/skill');
                                  },
                                  child: buildContainer(
                                      height: height,
                                      width: width,
                                      icons: Icons.stacked_bar_chart,
                                      icons2: Icons.arrow_circle_right,
                                      text: 'Skill')),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/objective');
                                },
                                child: buildContainer(
                                    height: height,
                                    width: width,
                                    icons: Icons.stacked_line_chart,
                                    icons2: Icons.arrow_circle_right,
                                    text: 'Objective'),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/reference');
                                },
                                child: buildContainer(
                                    height: height,
                                    width: width,
                                    icons: Icons.people_rounded,
                                    icons2: Icons.arrow_circle_right,
                                    text: 'Reference'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 350,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30,bottom: 15,left: 10,right: 10),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF30325D),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'More Sections',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.030,
                                fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/language');
                                  },
                                  child: buildContainer(
                                      height: height,
                                      width: width,
                                      icons: Icons.language,
                                      icons2: Icons.arrow_circle_right,
                                      text: 'Languages')),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/inte');
                                  },
                                  child: buildContainer(
                                      height: height,
                                      width: width,
                                      icons: Icons.favorite,
                                      icons2: Icons.arrow_circle_right,
                                      text: 'Interests')),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/act');
                                },
                                child: buildContainer(
                                    height: height,
                                    width: width,
                                    icons: Icons.local_activity,
                                    icons2: Icons.arrow_circle_right,
                                    text: 'Activities'),
                              ),
                              SizedBox(
                                height: height * 0.020,
                                width: double.infinity,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/add');
                                  },
                                  child: buildContainer(
                                      height: height,
                                      width: width,
                                      icons: Icons.add_circle_rounded,
                                      icons2: Icons.arrow_circle_right,
                                      text: 'Add')),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if(temp==1)
              {
                ch=1;
                Navigator.of(context).pushNamed('/detail');
              }
              else
              {
                ch=1;
                Navigator.of(context).pushNamed('/Pdf');
              }
            },
            child: Container(
              height: height * 0.060,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF6F73C8),
              ),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                    size: height * 0.025,
                  ),
                  Text(
                    ' View CV',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.025,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(
      {required double height,
      required double width,
      required IconData icons,
      required IconData icons2,
      required String text}) {
    return Container(
      height: height * 0.130,
      width: width * 0.285,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFFDFDFD)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icons,
            color: Color(0xFF30325D),
            size: height * 0.040,
          ),
          Text(
            '$text',
            style:
                TextStyle(color: Color(0xFF30325D), fontSize: height * 0.025),
          ),
          Icon(
            icons2,
            color: Color(0xFF30325D),
            size: height * 0.030,
          ),
        ],
      ),
    );
  }
}
