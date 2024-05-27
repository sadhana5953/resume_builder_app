import 'package:flutter/material.dart';

import '../../../utills/controllers/controllers.dart';
class addScreen extends StatefulWidget {
  const addScreen({super.key});

  @override
  State<addScreen> createState() => _addScreenState();
}

class _addScreenState extends State<addScreen> {
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
          'Add more Section',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: height * 0.030),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Click Toggle/Switch button to add/remove the section',
              style:
              TextStyle(color: Color(0xFF8F92D1), fontSize: height * 0.023),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Interest',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: interest,
                    onChanged: (value) {
                      setState(() {
                        interest = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Awards',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: award,
                    onChanged: (value) {
                      setState(() {
                        award = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Activities',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: activities,
                    onChanged: (value) {
                      setState(() {
                        activities = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Publication',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: publication,
                    onChanged: (value) {
                      setState(() {
                        publication = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Languages',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: languages,
                    onChanged: (value) {
                      setState(() {
                        languages = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Info',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: info,
                    onChanged: (value) {
                      setState(() {
                        info = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Projects',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: projects,
                    onChanged: (value) {
                      setState(() {
                        projects = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reference',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: reference,
                    onChanged: (value) {
                      setState(() {
                        reference = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Signature',
                  style:
                  TextStyle(color: Colors.white, fontSize: height * 0.023),
                ),
                Switch(
                    value: signature,
                    onChanged: (value) {
                      setState(() {
                        signature = value;
                      });
                    })
              ],
            ),
            SizedBox(
              height: height * 0.175,
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
    );
  }
}
