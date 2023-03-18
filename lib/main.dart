import 'package:flutter/material.dart';
import 'package:resume_app/screens/achievements.dart';
import 'package:resume_app/screens/carrierObjective.dart';
import 'package:resume_app/screens/contact_info.dart';
import 'package:resume_app/screens/declration.dart';
import 'package:resume_app/screens/education.dart';
import 'package:resume_app/screens/experience.dart';
import 'package:resume_app/screens/interest.dart';
import 'package:resume_app/screens/pdfPage.dart';
import 'package:resume_app/screens/personalDetails.dart';
import 'package:resume_app/screens/projects.dart';
import 'package:resume_app/screens/refrences.dart';
import 'package:resume_app/screens/technicalSkill.dart';
import 'package:resume_app/screens/workSpace.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyPage(),
        'workspace': (context) => const workSpace(),
        'contactInfo': (context) => const ContactInfo(),
        'carrierObjective': (context) => const CarrierObjective(),
        'personalDetails': (context) => const personalDetails(),
        'Education': (context) => const Education(),
        'Experience': (context) => const Experience(),
        'TechnicalSkill': (context) => const TechnicalSkill(),
        'Interest': (context) => const Interest(),
        'Projects': (context) => const Projects(),
        'Achievements': (context) => const Achievements(),
        'References': (context) => const References(),
        'Declaration': (context) => const Declaration(),
        'pdf': (context) => const pdfPage(),
      },
    ),
  );
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Resume Builder",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff0475FF),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: w,
            color: const Color(0xff0475FF),
            alignment: Alignment.center,
            child: const Text(
              "RESUMES",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Image(
            image: AssetImage("assets/images/open-cardboard-box.png"),
            height: 80,
          ),
          const Text(
            "No Resumes + Create new resume.",
            style: TextStyle(fontSize: 20, color: Color(0xff9B9B9B)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'workspace');
        },
        backgroundColor: const Color(0xff0475FF),
        child: const Icon(Icons.add, size: 35),
      ),
    );
  }
}

