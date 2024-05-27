import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder_app/home/screens/education/education.dart';
import 'package:resume_builder_app/home/screens/experience/experience.dart';
import 'package:resume_builder_app/home/screens/personal%20information/information.dart';
import 'package:resume_builder_app/home/utills/controllers/controllers.dart';

class pdf extends StatefulWidget {
  const pdf({super.key});

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
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
        actions: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/cv');
                  },
                  child: Container(
                    height: (ch == 0) ? 0 : 37,
                    width: (ch == 0) ? 0 : 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF6F73C8)),
                    alignment: Alignment.center,
                    child: Text(
                      'Change CV',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  )),
              SizedBox(
                width: 15,
              )
            ],
          ),
        ],
        toolbarHeight: 80,
        backgroundColor: Color(0xFF363863),
        title: Text(
          '${(ch == 0) ? 'Preview' : 'View CV'}',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              fontSize: height * 0.030),
        ),
      ),
      body: PdfPreview(
        build: (formate) => generatepdf(height, width),
      ),
    );
  }
}

Future<Uint8List> generatepdf(double height, double width) async {
  final pdf = pw.Document();

  final image1 = await imageFromAssetBundle('assets/images/email.png');
  final image2 = await imageFromAssetBundle('assets/images/call.png');
  final image3 = await imageFromAssetBundle('assets/images/location.png');

  final font1 = await rootBundle.load('assets/fonts/regular normal font.ttf');
  final ttf1 = pw.Font.ttf(font1);
  final font2 = await rootBundle.load('assets/fonts/regular italic font.ttf');
  final ttf2 = pw.Font.ttf(font2);
  final font3 = await rootBundle.load('assets/fonts/bold normal font.ttf');
  final ttf3 = pw.Font.ttf(font3);
  final font4 = await rootBundle.load('assets/fonts/bold italic font.ttf');
  final ttf4 = pw.Font.ttf(font4);

  final image = pw.MemoryImage(fileImage!.readAsBytesSync());

  pdf.addPage(pw.Page(
    build: (context) => pw.Column(
      children: [
        pw.Row(
          children: [
            pw.Container(
              height: 100,
              width: 100,
              margin: pw.EdgeInsets.only(left: 100),
              decoration: pw.BoxDecoration(
                  color: PdfColors.green, shape: pw.BoxShape.circle),
              child: pw.Image((image), fit: pw.BoxFit.cover),
            ),
            pw.Text('      ${about.txtName.text}',
                style: pw.TextStyle(fontSize: height*0.040, font: ttf3)),
          ],
        ),
        pw.Container(
          height: 50,
          width: double.infinity,
          margin: pw.EdgeInsets.only(top: 10),
          decoration: pw.BoxDecoration(
            gradient: pw.LinearGradient(colors: [
              PdfColors.pink50,
              PdfColors.pink100,
              PdfColors.purpleAccent100
            ]),
          ),
          child: pw.Row(
            children: [
              pw.SizedBox(
                width: 20,
              ),
              pw.Image(image1,
                  fit: pw.BoxFit.cover,
                  height: height * 0.025,
                  width: width * 0.050),
              pw.Text(
                '  ${about.txtEmail.text}         ',
                style: pw.TextStyle(fontSize: height*0.022,font: ttf3),
              ),
              pw.Image(image2,
                  fit: pw.BoxFit.cover,
                  height: height * 0.025,
                  width: width * 0.050),
              pw.Text(
                '  ${about.txtPhone.text}',
                style: pw.TextStyle(fontSize: height*0.022,font: ttf3),
              ),
            ],
          ),
        ),
        pw.Row(
          children: [
            pw.Container(
              height: 550,
              width: 210,
              padding: pw.EdgeInsets.only(left: 8),
              decoration: pw.BoxDecoration(color: PdfColors.white),
              child: pw.Column(
                children: [
                  pw.Row(children: [pw.Text(
                    '\n\n${about.txtAddress.text}',
                    style: pw.TextStyle(color: PdfColors.grey, fontSize: height*0.025,font: ttf3),
                  ),pw.Spacer()]),
                  pw.Row(children: [pw.Text(
                    '\nSkill',
                    style: pw.TextStyle(
                      color: PdfColors.indigo, font: ttf4, fontSize: height*0.033,),
                  ),pw.Spacer(),]),
                  pw.SizedBox(
                    height: 10,
                  ),
                  ...List.generate(listOfSkill.length, (index) => pw.Row(children: [
                    pw.Column(children: [pw.Text(
                      'o ${listOfSkill[index].text}      ',
                      style: pw.TextStyle(color: PdfColors.grey, fontSize: height*0.028,font: ttf3),
                    ),
                      pw.SizedBox(
                        height: 10,
                      ),],)
                  ])
                  ),
                  pw.Row(children: [pw.Text(
                    '\nEducation',
                    style: pw.TextStyle(
                      color: PdfColors.indigo, font: ttf4, fontSize: height*0.030,),
                  ),pw.Spacer(),]),
                  ...List.generate(educationList.length, (index) => pw.Column(children: [
                    pw.Row(children: [pw.Text(
                      '${educationList[index].txtSchool!.text}',
                      style: pw.TextStyle(
                          color: PdfColors.black, font: ttf3, fontSize: height*0.025),
                    ),pw.Spacer()]),
                    pw.Row(children: [pw.Text(
                      '${educationList[index].txtDegree!.text}',
                      style:
                      pw.TextStyle(color: PdfColors.blueGrey,font: ttf3, fontSize: height*0.022),
                    ),pw.Spacer()]),
                    pw.Row(children: [pw.Text(
                      '${educationList[index].txtScore!.text}',
                      style:
                      pw.TextStyle(color: PdfColors.blueGrey,font: ttf3, fontSize: height*0.022),
                    ),pw.Spacer()]),
                    pw.Row(children: [pw.Text(
                      '${educationList[index].txtYear!.text}',
                      style:
                      pw.TextStyle(color: PdfColors.blueGrey,font: ttf3, fontSize: height*0.022),
                    ),pw.Spacer()]),
                  ])),
                ],
              ),
            ),
            pw.Container(
              height: 550,
              width: 273,
              decoration: pw.BoxDecoration(color: PdfColors.grey700),
              child: pw.Column(
                children: [
                  pw.Container(
                    height: 120,
                    width: 250,
                    margin: pw.EdgeInsets.only(top: 10, left: 15, right: 15),
                    color: PdfColors.white,
                    child: pw.Row(
                      children: [
                        pw.Container(
                          height: 110,
                          margin: pw.EdgeInsets.symmetric(horizontal: 5),
                          width: 5,
                          decoration: pw.BoxDecoration(
                              color: PdfColors.pink,
                              borderRadius: pw.BorderRadius.circular(5)),
                        ),
                        pw.Column(
                          children: [
                            pw.Row(children: [pw.Text(
                              'Objective',
                              style: pw.TextStyle(
                                  font: ttf4, color: PdfColors.indigo,fontSize: height*0.025),
                            ),pw.SizedBox(width: 140)]),
                            pw.Container(
                              height: 93,
                              width: 227,
                              color: PdfColors.white,
                              child: pw.Text(
                                '${txtObjective.text}',
                                style: pw.TextStyle(
                                    fontSize: height * 0.018,
                                    font:ttf3,
                                    color: PdfColors.grey600),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  pw.Container(
                    height: 412,
                    width: 250,
                    margin: pw.EdgeInsets.only(top: 8, left: 15, right: 15),
                    color: PdfColors.white,
                    child: pw.Row(
                      children: [
                        pw.Container(
                          height: 400,
                          margin:
                          pw.EdgeInsets.only(top: 25, left: 5, right: 10),
                          width: 5,
                          decoration: pw.BoxDecoration(
                              color: PdfColors.pinkAccent200,
                              borderRadius: pw.BorderRadius.only(
                                  topRight: pw.Radius.circular(5),
                                  topLeft: pw.Radius.circular(5))),
                        ),
                        pw.Column(
                          children: [
                            pw.Row(children: [ pw.Text(
                              'Experience             ',
                              style: pw.TextStyle(
                                  font: ttf3, fontSize:height*0.027,color: PdfColors.indigo),
                            ),pw.SizedBox(width: 40)]),
                            ...List.generate(expList.length, (index) => pw.Column(children: [
                              pw.Row(children: [
                              ...List.generate(educationList.length, (index) => pw.Column(children: [
                                pw.Row(children: [pw.Text(
                                  '\n${expList[index].txtStart!.text} : ${expList[index].txtEnd!.text}',
                                  style: pw.TextStyle(
                                      color: PdfColors.blueGrey, font: ttf3, fontSize: height*0.022),
                                )]),
                                pw.Row(children: [pw.Text(
                                  '${expList[index].txtComapny!.text}',
                                  style:
                                  pw.TextStyle(color: PdfColors.blueGrey,font: ttf3, fontSize: height*0.022),
                                ),]),
                                pw.Row(children: [pw.Text(
                                  '${expList[index].txtJob!.text}',
                                  style:
                                  pw.TextStyle(color: PdfColors.blueGrey,font: ttf3, fontSize: height*0.022),
                                ),]),
                                pw.Row(children: [pw.Text(
                                  '${expList[index].txtDetail!.text}',
                                  style:
                                  pw.TextStyle(color: PdfColors.blueGrey,font: ttf3, fontSize: height*0.022),
                                ),]),
                              ])),
                            ]),]
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  )
  );
  return pdf.save();
}
