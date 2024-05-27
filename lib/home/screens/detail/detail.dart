import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_builder_app/home/screens/education/education.dart';
import 'package:resume_builder_app/home/screens/experience/experience.dart';
import 'package:resume_builder_app/home/screens/personal%20information/information.dart';
import 'package:resume_builder_app/home/screens/reference/reference.dart';
import 'package:resume_builder_app/home/utills/controllers/controllers.dart';

import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
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
              GestureDetector(onTap:(){Navigator.of(context).pushNamed('/cv');},child: Container(height: (ch==0)?0:37,width: (ch==0)?0:120,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF6F73C8)),alignment:Alignment.center,child: Text('Change CV',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),)),
              SizedBox(width: 15,)
            ],
          ),
        ],
        toolbarHeight: 80,
        backgroundColor: Color(0xFF363863),
        title: Text(
          '${(ch==0)?'Preview':'View CV'}',
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
    build: (context) => pw.Row(
      children: [
        pw.Container(
          height: height * 0.900,
          width: width * 0.660,
          color: PdfColors.indigo,
          child: pw.Column(children: [
            pw.Text(about.txtName.text,
                style: pw.TextStyle(
                    color: PdfColors.white, fontSize: height * 0.027,font: ttf3)),
            pw.Container(
              height: height * 0.150,
              width: width * 0.300,
              margin: pw.EdgeInsets.all(5),
              decoration: pw.BoxDecoration(
                color: PdfColors.green,
                borderRadius: pw.BorderRadius.circular(10),
              ),
              child: pw.Image((image),fit: pw.BoxFit.cover),
            ),
            pw.Container(
              height: height * 0.0350,
              width: double.infinity,
              color: PdfColors.grey700,
              margin: pw.EdgeInsets.symmetric(vertical: 10),
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                ' Contact',
                style: pw.TextStyle(
                    color: PdfColors.white, fontSize: height * 0.027,font: ttf4),
              ),
            ),
            pw.Row(
              children: [
                pw.Image(image1,
                    fit: pw.BoxFit.cover,
                    height: height * 0.025,
                    width: width * 0.050),
                pw.Text(
                  '  ${about.txtEmail.text}',
                  style: pw.TextStyle(
                      fontSize: height * 0.025, color: PdfColors.white,font: ttf3),
                )
              ],
            ),
            pw.SizedBox(height: height*0.010),
            pw.Row(
              children: [
                pw.Image(image2,
                    fit: pw.BoxFit.cover,
                    height: height * 0.025,
                    width: width * 0.050),
                pw.Text(
                  '  ${about.txtPhone.text}',
                  style: pw.TextStyle(
                      fontSize: height * 0.025, color: PdfColors.white,font: ttf3),
                )
              ],
            ),
            pw.SizedBox(height: height*0.010),
            pw.Row(
              children: [
                pw.Image(image3,
                    fit: pw.BoxFit.cover,
                    height: height * 0.025,
                    width: width * 0.050),
                pw.Text(
                  '  ${about.txtAddress.text}',
                  style: pw.TextStyle(
                      fontSize: height * 0.025, color: PdfColors.white,font: ttf3),
                )
              ],
            ),
            pw.Container(
              height: height * 0.0350,
              width: double.infinity,
              color: PdfColors.grey700,
              margin: pw.EdgeInsets.symmetric(vertical: 10),
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                ' Skills',
                style: pw.TextStyle(
                    color: PdfColors.white, fontSize: height * 0.027,font: ttf4),
              ),
            ),
            pw.Column(
                children: List.generate(
                    listOfSkill.length,
                    (index) => pw.Row(children: [
                          pw.Text(' ${listOfSkill[index].text}',
                              style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: height * 0.025,font: ttf3)),
                          pw.SizedBox(width: width * 0.010)
                        ]))),
            pw.Container(
              height: height * 0.0350,
              width: double.infinity,
              color: PdfColors.grey700,
              margin: pw.EdgeInsets.symmetric(vertical: 10),
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                ' Languages',
                style: pw.TextStyle(
                    color: PdfColors.white, fontSize: height * 0.027,font: ttf4),
              ),
            ),
            pw.Column(
                children: List.generate(
                    listOfLanguage.length,
                    (index) => pw.Row(children: [
                          pw.Text(' ${listOfLanguage[index].text}',
                              style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: height * 0.025,font: ttf3)),
                          pw.SizedBox(width: width * 0.010)
                        ]))),
            pw.Container(
              height: height * 0.0350,
              width: double.infinity,
              color: PdfColors.grey700,
              margin: pw.EdgeInsets.symmetric(vertical: 10),
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                ' Interests',
                style: pw.TextStyle(
                    color: PdfColors.white, fontSize: height * 0.027,font: ttf4),
              ),
            ),
            pw.Column(
                children: List.generate(
                    l1.length,
                    (index) => pw.Row(children: [
                          pw.Text(' ${l1[index].text}',
                              style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: height * 0.025,font: ttf3)),
                          pw.SizedBox(width: width * 0.010)
                        ]))),
            pw.Container(
              height: height * 0.0350,
              width: double.infinity,
              color: PdfColors.grey700,
              margin: pw.EdgeInsets.symmetric(vertical: 10),
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                ' Activities',
                style: pw.TextStyle(
                    color: PdfColors.white, fontSize: height * 0.027,font: ttf4),
              ),
            ),
            pw.Column(
                children: List.generate(
                    listOfActivitis.length,
                    (index) => pw.Row(children: [
                          pw.Text(' ${listOfActivitis[index].text}',
                              style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: height * 0.027,font: ttf3)),
                          pw.SizedBox(width: width * 0.010)
                        ]))),
          ]),
        ),
        pw.Container(
            height: height * 0.900,
            width: width * 0.650,
            decoration: pw.BoxDecoration(
              color: PdfColors.white,
              border: pw.Border(
                  right: pw.BorderSide(width: 1.5, color: PdfColors.grey),
                  top: pw.BorderSide(width: 1.5, color: PdfColors.grey),
                  bottom: pw.BorderSide(width: 1.5, color: PdfColors.grey)),
            ),
          child: pw.Column(children: [
            pw.Row(children: [pw.Text(' OBJECTIVE',style: pw.TextStyle(fontSize: height*0.027,font: ttf3)),pw.Spacer()]),
            pw.SizedBox(height: height*0.010),
            pw.Text(txtObjective.text,style: pw.TextStyle(fontSize: height*0.020,font: ttf3)),
            pw.Divider(color: PdfColors.grey,thickness: 1.5),
            pw.Row(children: [pw.Text(' EXPERIENCE',style: pw.TextStyle(fontSize: height*0.027,font: ttf3)),pw.Spacer()]),
            pw.SizedBox(height: height*0.008),
            ...List.generate(expList.length, (index) => pw.Column(children: [
              pw.Row(children: [pw.Text('  ${expList[index].txtComapny!.text}',style: pw.TextStyle(color:PdfColors.blue,fontSize: height*0.022,font: ttf3)),pw.Spacer()]),
              pw.Row(children: [pw.Text('  ${expList[index].txtJob!.text}',style: pw.TextStyle(fontSize: height*0.022,font: ttf3)),pw.Spacer()]),
              pw.Row(children: [pw.Text('  ${expList[index].txtDetail!.text}',style: pw.TextStyle(fontSize: height*0.022,font: ttf3)),pw.Spacer()]),
              pw.SizedBox(height: height*0.008),
            ],)),
            pw.Divider(color: PdfColors.grey,thickness: 1.5),
            pw.Row(children: [pw.Text(' EDUCATION',style: pw.TextStyle(fontSize: height*0.027,font: ttf3)),pw.Spacer()]),
            pw.SizedBox(height: height*0.008),
            ...List.generate(educationList.length, (index) => pw.Column(children: [
              pw.Row(children: [pw.Text('  ${educationList[index].txtSchool!.text}',style: pw.TextStyle(color:PdfColors.blue,fontSize: height*0.022,font: ttf3)),pw.Spacer(),pw.Text('${educationList[index].txtYear!.text}  ',style: pw.TextStyle(color:PdfColors.blue,fontSize: height*0.022,font: ttf3))]),
              pw.Row(children: [pw.Text('  ${educationList[index].txtDegree!.text}',style: pw.TextStyle(fontSize: height*0.022,font: ttf3)),pw.Spacer()]),
              pw.Row(children: [pw.Text('  ${educationList[index].txtScore!.text}',style: pw.TextStyle(fontSize: height*0.022,font: ttf3)),pw.Spacer()]),
              pw.SizedBox(height: height*0.008),
            ],)),
            pw.Divider(color: PdfColors.grey,thickness: 1.5),
            pw.Row(children: [pw.Text(' REFERENCE',style: pw.TextStyle(fontSize: height*0.027,font: ttf3)),pw.Spacer()]),
            pw.SizedBox(height: height*0.008),
            ...List.generate(refList.length, (index) => pw.Column(children: [
              pw.Row(children: [pw.Text('  ${refList[index].txtRef!.text}',style: pw.TextStyle(color:PdfColors.blue,fontSize: height*0.022,font: ttf3)),pw.Spacer()]),
              pw.Row(children: [pw.Text('  ${refList[index].txtJobTitle!.text}',style: pw.TextStyle(fontSize: height*0.022,font: ttf3)),pw.Spacer()]),
              pw.Row(children: [pw.Text('  ${refList[index].txtEMAIL!.text}',style: pw.TextStyle(fontSize: height*0.022,font: ttf3)),pw.Spacer()]),
              pw.Row(children: [pw.Text('  ${refList[index].txtPHONE!.text}',style: pw.TextStyle(fontSize: height*0.022,font: ttf3)),pw.Spacer()]),
              pw.SizedBox(height: height*0.008),
            ],)),
           // pw.Divider(color: PdfColors.grey,thickness: 1.5),
          ]),
        ),
      ],
    ),
  ),
  );
  return pdf.save();
}
