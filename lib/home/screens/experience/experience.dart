import 'package:flutter/material.dart';
import 'package:resume_builder_app/home/utills/controllers/controllers.dart';

class experience extends StatefulWidget {
  const experience({super.key});

  @override
  State<experience> createState() => _experienceState();
}

class _experienceState extends State<experience> {

  void _clearText(int index) {
    expList[index].txtStart!.clear();
    expList[index].txtJob!.clear();
    expList[index].txtEnd!.clear();
    expList[index].txtDetail!.clear();
    expList[index].txtComapny!.clear();
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
          'Experience',
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
                child: Column(
                  children: List.generate(expList.length, (index) => Container(
                    height: height * 0.600,
                    width: double.infinity,
                    margin: EdgeInsets.all(15),
                    color: Color(0xFF363863),
                    child: buildColumn( height: height,
                      width: width,
                      index: index,
                      controller1: expList[index].txtComapny!,
                      controller2: expList[index].txtJob!,
                      controller3: expList[index].txtStart!,
                      controller4: expList[index].txtEnd!,
                      controller5: expList[index].txtDetail!,
                    ),
                  ),)
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
                      TextEditingController txtComapny = TextEditingController();
                      TextEditingController txtJob = TextEditingController();
                      TextEditingController txtStart = TextEditingController();
                      TextEditingController txtEnd = TextEditingController();
                      TextEditingController txtDetail = TextEditingController();

                      expList.add(expModel(txtComapny: txtComapny,txtDetail: txtDetail,txtEnd: txtEnd,txtJob: txtJob,txtStart: txtStart));
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

  Column buildColumn({required double height,
    required double width,
    required int index,
    required TextEditingController controller1,
    required TextEditingController controller2,
    required TextEditingController controller3,
    required TextEditingController controller4,
    required TextEditingController controller5,}) {
    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '    Experience ${index+1}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.022),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (index != 0) {
                                      expList.removeAt(index);
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
                          '    Company Name',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.022),
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
                                hintText: '  Company name',
                                hintStyle:
                                    TextStyle(color: Color(0xFF6B6D72)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8),
                                        width: 2.5)),
                              )),
                        ),
                        Text(
                          '    Job title',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.022),
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
                                hintText: '  Job Title',
                                hintStyle:
                                    TextStyle(color: Color(0xFF6B6D72)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8),
                                        width: 2.5)),
                              )),
                        ),
                        Text(
                          '     Start Date                End Date',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.022),
                        ),
                        Row(
                          children: [
                            Container(
                              height: height*0.085,
                              width: width*0.42,
                              margin: EdgeInsets.only(left: 15,top: 5,bottom: 8),
                              child: TextFormField(
                                  controller: controller3,
                                  style: TextStyle(color: Colors.white),
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: ' dd/mm/yy...',
                                    hintStyle:
                                        TextStyle(color: Color(0xFF6B6D72)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2.5)),
                                  )),
                            ),
                            Container(
                              height: height*0.085,
                              width: width*0.42,
                              margin: EdgeInsets.only(left: 5,top: 5,bottom: 8),
                              child: TextFormField(
                                  controller: controller4,
                                  style: TextStyle(color: Colors.white),
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: ' dd/mm/yy...',
                                    hintStyle:
                                        TextStyle(color: Color(0xFF6B6D72)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Color(0xFF6F73C8),
                                            width: 2.5)),
                                  )),
                            ),
                          ],
                        ),
                        Text(
                          '    Detail',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.022),
                        ),
                        Container(
                          height: height*0.085,
                          width: width*0.83,
                          margin: EdgeInsets.only(left: 17,top: 5,bottom: 8),
                          child: TextFormField(
                              controller: controller5,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: '  Detail',
                                hintStyle:
                                    TextStyle(color: Color(0xFF6B6D72)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8), width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xFF6F73C8),
                                        width: 2.5)),
                              )),
                        ),
                      ],
                    );
  }
}

class expModel {
  TextEditingController? txtComapny;
  TextEditingController? txtJob;
  TextEditingController? txtStart;
  TextEditingController? txtEnd;
  TextEditingController? txtDetail;

  expModel({this.txtDetail, this.txtJob, this.txtEnd, this.txtStart,this.txtComapny});
}

List<expModel> expList = [
  expModel(
      txtComapny: txtComapny,
      txtStart: txtStart,
      txtEnd: txtEnd,
      txtDetail: txtDetail,
      txtJob: txtJob),
];

TextEditingController txtComapny = TextEditingController();
TextEditingController txtJob = TextEditingController();
TextEditingController txtStart = TextEditingController();
TextEditingController txtEnd = TextEditingController();
TextEditingController txtDetail = TextEditingController();
