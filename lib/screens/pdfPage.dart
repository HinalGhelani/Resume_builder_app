import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'Globals.dart';

class pdfPage extends StatefulWidget {
  const pdfPage({Key? key}) : super(key: key);

  @override
  State<pdfPage> createState() => _pdfPageState();
}

class _pdfPageState extends State<pdfPage> {
  final pdf = pw.Document();
  final myImage = pw.MemoryImage(
    File(GlobalVar.image!.path).readAsBytesSync(),
  );

  @override
  void initState() {
    super.initState();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
          child: pw.Align(
            child: pw.SizedBox.expand(
                child: pw.Container(
                  height: 3580,
                  width: 2480,
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        flex: 2,
                        child: pw.Container(
                          color: const PdfColor.fromInt(0xff323B4C),
                          child: pw.Container(
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 20),
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Padding(
                                    padding: const pw.EdgeInsets.only(
                                        top: 20, bottom: 20, right: 30),
                                    child: pw.Container(
                                      height: 100,
                                      width: 100,
                                      decoration: pw.BoxDecoration(
                                          shape: pw.BoxShape.circle,
                                          image: pw.DecorationImage(
                                              image: myImage,
                                              fit: pw.BoxFit.cover)),
                                    ),
                                  ),
                                  // Contact Information
                                  pw.Text(
                                    "Contact",
                                    style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.white,
                                        fontWeight: pw.FontWeight.bold),
                                  ),
                                  pw.Divider(
                                    height: 10,
                                    color: PdfColors.white,
                                  ),
                                  pw.Text(
                                    "Phone",
                                    style: const pw.TextStyle(
                                        fontSize: 15, color: PdfColors.white),
                                  ),
                                  pw.Text(
                                    GlobalVar.phone,
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "Email",
                                    style: const pw.TextStyle(
                                        fontSize: 15, color: PdfColors.white),
                                  ),
                                  pw.Text(
                                    GlobalVar.email,
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "Address",
                                    style: const pw.TextStyle(
                                        fontSize: 15, color: PdfColors.white),
                                  ),
                                  pw.Text(
                                    GlobalVar.address,
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  // Personal Details
                                  pw.Text(
                                    "Personal Detailss",
                                    style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.white,
                                        fontWeight: pw.FontWeight.bold),
                                  ),
                                  pw.Divider(
                                    height: 10,
                                    color: PdfColors.white,
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "DOB",
                                    style: const pw.TextStyle(
                                        fontSize: 15, color: PdfColors.white),
                                  ),
                                  pw.Text(
                                    GlobalVar.dob,
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "Marital Status",
                                    style: const pw.TextStyle(
                                        fontSize: 15, color: PdfColors.white),
                                  ),
                                  pw.Text(
                                    GlobalVar.marital,
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "Nationality",
                                    style: const pw.TextStyle(
                                        fontSize: 15, color: PdfColors.white),
                                  ),
                                  pw.Text(
                                    GlobalVar.nation,
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "Language",
                                    style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.white,
                                        fontWeight: pw.FontWeight.bold),
                                  ),
                                  pw.Text(
                                    GlobalVar.l.join('\n'),
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "Hobbies",
                                    style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.white,
                                        fontWeight: pw.FontWeight.bold),
                                  ),
                                  pw.Text(
                                    GlobalVar.interest.join('\n'),
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "Skill",
                                    style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.white,
                                        fontWeight: pw.FontWeight.bold),
                                  ),
                                  pw.Text(
                                    GlobalVar.tech.join('\n'),
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                  pw.Text(
                                    "Achievements",
                                    style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.white,
                                        fontWeight: pw.FontWeight.bold),
                                  ),
                                  pw.Text(
                                    GlobalVar.achive.join('\n'),
                                    style: const pw.TextStyle(
                                        fontSize: 10, color: PdfColors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      pw.Expanded(
                        flex: 3,
                        child: pw.Container(
                          color: const PdfColor.fromInt(0xffFAFAFA),
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 20, top: 40,right: 20),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                  GlobalVar.name,
                                  style: pw.TextStyle(
                                      fontSize: 30,
                                      color: const PdfColor.fromInt(0xff323B4C),
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Text(
                                  GlobalVar.degree,
                                  style: const pw.TextStyle(
                                    fontSize: 18,
                                    color: PdfColor.fromInt(0xff323B4C),
                                  ),
                                ),
                                pw.Text(
                                  GlobalVar.obj,
                                  style: const pw.TextStyle(
                                      fontSize: 10,
                                      color: PdfColor.fromInt(0xff323B4C)),
                                ),
                                pw.SizedBox(height: 20),
                                pw.Text(
                                  "Education",
                                  style: pw.TextStyle(
                                      fontSize: 18,
                                      color: const PdfColor.fromInt(0xff323B4C),
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Divider(
                                  height: 10,
                                  color: const PdfColor.fromInt(0xff323B4C),
                                ),
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      GlobalVar.year,
                                      style: pw.TextStyle(
                                          fontSize: 12,
                                          color: const PdfColor.fromInt(0xff323B4C),
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                    pw.SizedBox(
                                      width: 30,
                                    ),
                                    pw.Column(
                                      crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text(
                                          GlobalVar.degree,
                                          style: const pw.TextStyle(
                                              fontSize: 12,
                                              color: PdfColor.fromInt(0xff323B4C)),
                                        ),
                                        pw.Text(
                                          ("${GlobalVar.persentage} %"),
                                          style: const pw.TextStyle(
                                              fontSize: 12,
                                              color: PdfColor.fromInt(0xff323B4C)),
                                        ),
                                        pw.Text(
                                          GlobalVar.college,
                                          style: const pw.TextStyle(
                                              fontSize: 12,
                                              color: PdfColor.fromInt(0xff323B4C)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                pw.SizedBox(height: 10),
                                pw.Text(
                                  "Experience",
                                  style: pw.TextStyle(
                                      fontSize: 18,
                                      color: const PdfColor.fromInt(0xff323B4C),
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Divider(
                                  height: 10,
                                  color: const PdfColor.fromInt(0xff323B4C),
                                ),
                                pw.Text(
                                  ("${GlobalVar.dJoin} - ${GlobalVar.dExit}"),
                                  style: pw.TextStyle(
                                      fontSize: 12,
                                      color: const PdfColor.fromInt(0xff323B4C),
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.SizedBox(height: 10),
                                pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceAround,
                                  children: [
                                    pw.Text(
                                      GlobalVar.comName,
                                      style: const pw.TextStyle(
                                          fontSize: 12,
                                          color: PdfColor.fromInt(0xff323B4C)),
                                    ),
                                    pw.Text(
                                      GlobalVar.role,
                                      style: const pw.TextStyle(
                                          fontSize: 12,
                                          color: PdfColor.fromInt(0xff323B4C)),
                                    ),
                                    pw.Text(
                                      GlobalVar.institute,
                                      style: const pw.TextStyle(
                                          fontSize: 12,
                                          color: PdfColor.fromInt(0xff323B4C)),
                                    ),
                                  ],
                                ),
                                pw.SizedBox(height: 10),
                                // projects
                                pw.Text(
                                  "Project",
                                  style: pw.TextStyle(
                                      fontSize: 18,
                                      color: const PdfColor.fromInt(0xff323B4C),
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Divider(
                                  height: 10,
                                  color: const PdfColor.fromInt(0xff323B4C),
                                ),
                                pw.Text(
                                  GlobalVar.proTittle,
                                  style: pw.TextStyle(
                                      fontSize: 16,
                                      color: const PdfColor.fromInt(0xff323B4C),
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Text(
                                  GlobalVar.proDescription,
                                  style: const pw.TextStyle(
                                      fontSize: 12,
                                      color: PdfColor.fromInt(0xff323B4C)),
                                ),
                                pw.SizedBox(height: 10),

                                // Reference

                                pw.Text(
                                  "Reference",
                                  style: pw.TextStyle(
                                      fontSize: 18,
                                      color: const PdfColor.fromInt(0xff323B4C),
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Divider(
                                  height: 10,
                                  color: const PdfColor.fromInt(0xff323B4C),
                                ),
                                pw.Text(
                                  GlobalVar.organize,
                                  style: const pw.TextStyle(
                                      fontSize: 12,
                                      color: PdfColor.fromInt(0xff323B4C)),
                                ),
                                pw.Text(
                                  GlobalVar.rName,
                                  style: const pw.TextStyle(
                                      fontSize: 12,
                                      color: PdfColor.fromInt(0xff323B4C)),
                                ),
                                pw.Text(
                                  GlobalVar.rDesignation,
                                  style: const pw.TextStyle(
                                      fontSize: 12,
                                      color: PdfColor.fromInt(0xff323B4C)),
                                ),
                                pw.SizedBox(height: 10),
                                // Declaration
                                pw.Text(
                                  "Declaration",
                                  style: pw.TextStyle(
                                      fontSize: 18,
                                      color: const PdfColor.fromInt(0xff323B4C),
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Divider(
                                  height: 10,
                                  color: const PdfColor.fromInt(0xff323B4C),
                                ),
                                pw.Text(
                                  GlobalVar.description,
                                  style: const pw.TextStyle(
                                      fontSize: 12,
                                      color: PdfColor.fromInt(0xff323B4C)),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 170),
                                  child: pw.Column(
                                    mainAxisAlignment: pw.MainAxisAlignment.end,
                                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                                    children: [
                                      pw.Text(
                                        GlobalVar.place,
                                        style: pw.TextStyle(
                                            fontSize: 12,
                                            color: const PdfColor.fromInt(0xff323B4C),
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                      pw.Text(
                                        GlobalVar.DeclareDate,
                                        style: pw.TextStyle(
                                            fontSize: 12,
                                            color: const PdfColor.fromInt(0xff323B4C),
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PDF Page",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() async {
                Uint8List data = await pdf.save();
                await Printing.layoutPdf(onLayout: (format) => data);
              });
            },
            icon: const Icon(Icons.save_alt_sharp),
          ),
        ],
        centerTitle: true,
        backgroundColor: Color(0xff0475FF),
      ),
      body: SizedBox(
        height: 3580,
        width: 2480,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: const Color(0xff323B4C),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, right: 20),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: FileImage(GlobalVar.image!),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      // Contact details
                      const Text(
                        "Contact",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      const Divider(
                        height: 10,
                        color: Colors.white,
                      ),
                      const Text(
                        "Phone",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        GlobalVar.phone,
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Email",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        GlobalVar.email,
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Address",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        GlobalVar.address,
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Personal Details
                      const Text(
                        "Personal Details",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      const Divider(
                        height: 10,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "DOB",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      Text(
                        GlobalVar.dob,
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Marital Status",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      Text(
                        GlobalVar.marital,
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Nationality",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      Text(
                        GlobalVar.nation,
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Language",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        GlobalVar.l.join('\n'),
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Hobbies",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        GlobalVar.interest.join('\n'),
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Skill",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        GlobalVar.tech.join('\n'),
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Achievements",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        GlobalVar.achive.join('\n'),
                        style: const TextStyle(
                            fontSize: 10, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: const Color(0xffFAFAFA),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30,right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        GlobalVar.name,
                        style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xff323B4C),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        GlobalVar.degree,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Color(0xff323B4C),
                        ),
                      ),
                      Text(
                        GlobalVar.obj,
                        style: const TextStyle(
                            fontSize: 10, color: Color(0xff323B4C)),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Education",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff323B4C),
                            fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        height: 10,
                        color: Color(0xff323B4C),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            GlobalVar.year,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xff323B4C),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                GlobalVar.degree,
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xff323B4C)),
                              ),
                              Text(
                                ("${GlobalVar.persentage} %"),
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xff323B4C)),
                              ),
                              Text(
                                GlobalVar.college,
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xff323B4C)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Experience",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff323B4C),
                            fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        height: 10,
                        color: Color(0xff323B4C),
                      ),
                      Text(
                        ("${GlobalVar.dJoin} - ${GlobalVar.dExit}"),
                        style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xff323B4C),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            GlobalVar.comName,
                            style: const TextStyle(
                                fontSize: 12, color: Color(0xff323B4C)),
                          ),
                          Text(
                            GlobalVar.institute,
                            style: const TextStyle(
                                fontSize: 12, color: Color(0xff323B4C)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // projects
                      const Text(
                        "Project",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff323B4C),
                            fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        height: 10,
                        color: Color(0xff323B4C),
                      ),
                      Text(
                        GlobalVar.proTittle,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff323B4C),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        GlobalVar.proDescription,
                        style: const TextStyle(
                            fontSize: 12, color: Color(0xff323B4C)),
                      ),
                      const SizedBox(height: 10),
                      // Reference
                      const Text(
                        "Reference",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff323B4C),
                            fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        height: 10,
                        color: Color(0xff323B4C),
                      ),
                      Text(
                        GlobalVar.organize,
                        style: const TextStyle(
                            fontSize: 12, color: Color(0xff323B4C)),
                      ),
                      Text(
                        GlobalVar.rName,
                        style: const TextStyle(
                            fontSize: 12, color: Color(0xff323B4C)),
                      ),
                      Text(
                        GlobalVar.rDesignation,
                        style: const TextStyle(
                            fontSize: 12, color: Color(0xff323B4C)),
                      ),
                      const SizedBox(height: 10),
                      // Declaration
                      const Text(
                        "Declaration",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff323B4C),
                            fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        height: 10,
                        color: Color(0xff323B4C),
                      ),
                      Text(
                        GlobalVar.description,
                        style: const TextStyle(
                            fontSize: 12, color: Color(0xff323B4C)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              GlobalVar.place,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff323B4C),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              GlobalVar.DeclareDate,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff323B4C),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
