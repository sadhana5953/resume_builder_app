import 'package:flutter/material.dart';
import 'package:resume_builder_app/home/utills/controllers/controllers.dart';

class reference extends StatefulWidget {
  const reference({super.key});

  @override
  State<reference> createState() => _referenceState();
}

GlobalKey<FormState> formkey = GlobalKey();

class _referenceState extends State<reference> {
  void _clearText(int index) {
    refList[index].txtEMAIL!.clear();
    refList[index].txtRef!.clear();
    refList[index].txtComp!.clear();
    refList[index].txtJobTitle!.clear();
    refList[index].txtPHONE!.clear();
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
                    children: List.generate(refList.length, (index) => Container(
                      height: height * 0.730,
                      width: double.infinity,
                      margin: EdgeInsets.all(15),
                      color: Color(0xFF363863),
                      child: buildColumn(
                        height: height,
                        width: width,
                        index: index,
                        controller1: refList[index].txtRef!,
                        controller2: refList[index].txtJobTitle!,
                        controller3: refList[index].txtComp!,
                        controller4: refList[index].txtEMAIL!,
                        controller5: refList[index].txtPHONE!,
                      ),
                    ),)
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
                      TextEditingController txtRef = TextEditingController();
                      TextEditingController txtJobtitle = TextEditingController();
                      TextEditingController txtComp = TextEditingController();
                      TextEditingController txtEMAIL = TextEditingController();
                      TextEditingController txtPHONE = TextEditingController();

                      refList.add(refModel(txtComp: txtComp,txtEMAIL: txtEMAIL,txtJobTitle: txtJobtitle,txtPHONE: txtPHONE,txtRef: txtRef));
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

  Column buildColumn(
      {required double height,
        required double width,
        required int index,
        required TextEditingController controller1,
        required TextEditingController controller2,
        required TextEditingController controller3,
        required TextEditingController controller4,
        required TextEditingController controller5}
      ) {
    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '    Reference ${index + 1}',
                                style: TextStyle(color: Colors.white, fontSize: height * 0.022),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (index != 0) {
                                        refList.removeAt(index);
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
                            "    Referee's Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.022),
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
                            '    Job title',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.022),
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
                            '    Company Name',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.022),
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
                            '    Email',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.022),
                          ),
                          Container(
                            height: height*0.085,
                            width: width*0.83,
                            margin: EdgeInsets.only(left: 17,top: 5,bottom: 8),
                            child: TextFormField(
                                controller: controller4,
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
                                  }else if (value.startsWith('@gmail.com')) {
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
                            '    Phone',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.022),
                          ),
                          Container(
                            height: height*0.085,
                            width: width*0.83,
                            margin: EdgeInsets.only(left: 17,top: 5,bottom: 8),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                                controller: controller5,
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
                        ],
                      );
  }
}

class refModel {
  TextEditingController? txtRef;
  TextEditingController? txtJobTitle;
  TextEditingController? txtComp;
  TextEditingController? txtEMAIL;
  TextEditingController? txtPHONE;

  refModel({this.txtPHONE, this.txtEMAIL, this.txtComp, this.txtJobTitle,this.txtRef});
}

List<refModel> refList = [
  refModel(
      txtRef: txtRef,
      txtJobTitle: txtJobtitle,
      txtComp: txtComp,
      txtPHONE: txtPHONE,
      txtEMAIL: txtEMAIL),
];

TextEditingController txtRef = TextEditingController();
TextEditingController txtJobtitle = TextEditingController();
TextEditingController txtComp = TextEditingController();
TextEditingController txtEMAIL = TextEditingController();
TextEditingController txtPHONE = TextEditingController();

