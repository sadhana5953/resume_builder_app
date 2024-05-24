import 'package:flutter/material.dart';
import 'package:resume_builder_app/home/utills/controllers/controllers.dart';

class reference extends StatefulWidget {
  const reference({super.key});

  @override
  State<reference> createState() => _referenceState();
}

Reference _reference = Reference();
GlobalKey<FormState> formkey = GlobalKey();

class _referenceState extends State<reference> {
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
          'Reference',
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
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.800,
                        width: double.infinity,
                        margin: EdgeInsets.all(15),
                        color: Color(0xFF363863),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Reference',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * 0.025),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                      size: 30,
                                    ))
                              ],
                            ),
                            Text(
                              "Referee's Name",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.025),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                  controller: _reference.txtRefere,
                                  style: TextStyle(color: Colors.white),
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2.5)),
                                  )),
                            ),
                            Text(
                              'Job title',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.025),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                  controller: _reference.txtjob,
                                  style: TextStyle(color: Colors.white),
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2.5)),
                                  )),
                            ),
                            Text(
                              'Company Name',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.025),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                  controller: _reference.txtCompanyName,
                                  style: TextStyle(color: Colors.white),
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2.5)),
                                  )),
                            ),
                            Text(
                              'Email',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.025),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                  controller: _reference.txtEMAIL,
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2.5)),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty || value == null) {
                                      return "Err:Can't be left blank!";
                                    } else if (value.startsWith('@gmail.com')) {
                                      return 'Err:Email!';
                                    } else if (!value.contains('@gmail.com')) {
                                      return 'Err:Email" !';
                                    } else if (!value.endsWith('@gmail.com')) {
                                      return 'Err:Email!';
                                    } else if (value.contains(' ')) {
                                      return 'Err:Email!';
                                    } else if (value != value.toLowerCase()) {
                                      return 'Err:Email!';
                                    }
                                  }),
                            ),
                            Text(
                              'Phone',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.025),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                  controller: _reference.txtPHONE,
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2.5)),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty || value == null) {
                                      return 'Err:Phone!';
                                    } else if (value.length > 10 ||
                                        value.length < 10) {
                                      return 'Err:Phone!';
                                    }
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                      Navigator.of(context).pushNamed('/detail');
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
                    //   Navigator.of(context).pushNamed('/switch');
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
                  onTap: () {},
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
}
