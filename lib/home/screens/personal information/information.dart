import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/home/utills/Lists/switchList.dart';
import 'package:resume_builder_app/home/utills/controllers/controllers.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class informationScreen extends StatefulWidget {
  const informationScreen({super.key});

  @override
  State<informationScreen> createState() => _informationScreenState();
}

About about = About();
GlobalKey<FormState> formkey = GlobalKey();

class _informationScreenState extends State<informationScreen> {
  void _removeImage() {
    setState(() {
      fileImage = null;
    });
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
          'Personal Details',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
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
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Photo ( Optional )\n',
                            style: TextStyle(
                                color: Colors.white, fontSize: height * 0.025),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () async {
                                XFile? imagePath = await imagePicker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {
                                  fileImage = File(imagePath!.path);
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF6F73C8),
                                radius: width * 0.2,
                                backgroundImage: (fileImage == null)
                                    ? null
                                    : FileImage(fileImage!),
                                child: fileImage == null
                                    ? Icon(Icons.person, size: 100)
                                    : null,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.020,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FilledButton(
                                  onPressed: () async {
                                    XFile? imagePath = await imagePicker
                                        .pickImage(source: ImageSource.gallery);
                                    setState(() {
                                      fileImage = File(imagePath!.path);
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Color(0xFF6F73C8),
                                    ),
                                  ),
                                  child: Text(
                                    'Change',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.025,
                                        fontWeight: FontWeight.w400),
                                  )),
                              FilledButton(
                                  onPressed: () {
                                    _removeImage();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Color(0xFF6F73C8),
                                    ),
                                  ),
                                  child: Text(
                                    'Remove',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.025,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ],
                          ),
                          Text(
                            '\n Name',
                            style: TextStyle(
                                color: Colors.white, fontSize: height * 0.030),
                          ),
                          TextFormField(
                              controller: about.txtName,
                              style: TextStyle(color: Colors.white),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2.5)),
                                hintText: '  Your name',
                                hintStyle: TextStyle(color: Color(0xFF6B6D72)),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Can't be left blank";
                                }
                              }),
                          Text(
                            '\n Address',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.030,
                                fontWeight: FontWeight.w400),
                          ),
                          TextFormField(
                            controller: about.txtAddress,
                            style: TextStyle(color: Colors.white),
                            textInputAction: TextInputAction.next,
                            maxLines: 3,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: Color(0xFF6F73C8), width: 2)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: Color(0xFF6F73C8), width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: Color(0xFF6F73C8), width: 2.5)),
                              hintText: '  Your address',
                              hintStyle: TextStyle(color: Color(0xFF6B6D72)),
                            ),
                          ),
                          Text(
                            '\n Email',
                            style: TextStyle(
                                color: Colors.white, fontSize: height * 0.029),
                          ),
                          TextFormField(
                              controller: about.txtEmail,
                              style: TextStyle(color: Colors.white),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2.5)),
                                hintText: '  Youremail@gmail.com',
                                hintStyle: TextStyle(color: Color(0xFF6B6D72)),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return 'Err:Email!';
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
                          Text(
                            '\n Phone',
                            style: TextStyle(
                                color: Colors.white, fontSize: height * 0.025),
                          ),
                          TextFormField(
                              controller: about.txtPhone,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2.5)),
                                hintText: '  987654321',
                                hintStyle: TextStyle(color: Color(0xFF6B6D72)),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return 'Err:Phone!';
                                } else if (value.length > 10 ||
                                    value.length < 10) {
                                  return 'Err:Phone!';
                                }
                              }),
                        ],
                      ),
                    ),
                  )),
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
                    Navigator.of(context).pushNamed('/switch');
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
}
