import 'dart:io';
import 'package:flutter/material.dart';

class GlobalVar {
  // contact Information
  static GlobalKey<FormState> conInfo = GlobalKey<FormState>();
  static File? image;
  static TextEditingController contact1 = TextEditingController();
  static TextEditingController contact2 = TextEditingController();
  static TextEditingController contact3 = TextEditingController();
  static TextEditingController contact4 = TextEditingController();
  static TextEditingController contact5 = TextEditingController();
  static TextEditingController contact6 = TextEditingController();
  static String name = '', email = '', phone = '', address = '';

  // carrier Objective
  static GlobalKey<FormState> careerObj = GlobalKey<FormState>();
  static TextEditingController career1 = TextEditingController();
  static TextEditingController career2 = TextEditingController();
  static String obj = '', designation = '';

  // Personal Details
  static GlobalKey<FormState> person = GlobalKey<FormState>();
  static TextEditingController personal = TextEditingController();
  static String marital = '';
  static TextEditingController selectbirthDt = TextEditingController();
  static String dob = '',
      language1 = '',
      language2 = '',
      language3 = '',
      nation = '';
  static bool first = false;
  static bool second = false;
  static bool third = false;
  static List l = [];

  // Education
  static GlobalKey<FormState> education = GlobalKey<FormState>();
  static TextEditingController educate1 = TextEditingController();
  static TextEditingController educate2 = TextEditingController();
  static TextEditingController educate3 = TextEditingController();
  static TextEditingController educate4 = TextEditingController();
  static String degree = '', college = '', persentage = '', year = '';

  //  Experience
  static String? expert;
  static GlobalKey<FormState> experience = GlobalKey<FormState>();
  static TextEditingController expert1 = TextEditingController();
  static TextEditingController expert2 = TextEditingController();
  static TextEditingController expert3 = TextEditingController();
  static TextEditingController dateExit = TextEditingController();
  static TextEditingController dateJoint = TextEditingController();
  static String comName = '', institute = '', role = '', dJoin = '', dExit = '';

  // Technical Skill
  static GlobalKey<FormState> technicSkill = GlobalKey<FormState>();
  static List tech = [];
  static List<TextEditingController> addtech = <TextEditingController>[];

  //  Interest
  static List interest = [];
  static GlobalKey<FormState> interestVar = GlobalKey<FormState>();
  static List<TextEditingController> addInterest = <TextEditingController>[];

  // Projects
  static GlobalKey<FormState> project = GlobalKey<FormState>();
  static TextEditingController project1 = TextEditingController();
  static TextEditingController project2 = TextEditingController();
  static TextEditingController project3 = TextEditingController();
  static TextEditingController project4 = TextEditingController();
  static String proTittle = '',
      tech1 = '',
      tech2 = '',
      tech3 = '',
      proRole = '',
      technology = '',
      proDescription = '';

  // Achievements
  static List achive = [];
  static GlobalKey<FormState> achievement = GlobalKey<FormState>();
  static List<TextEditingController> addAchive = <TextEditingController>[];

  // References
  static GlobalKey<FormState> reference = GlobalKey<FormState>();
  static TextEditingController reference1 = TextEditingController();
  static TextEditingController reference2 = TextEditingController();
  static TextEditingController reference3 = TextEditingController();
  static String rName = '', rDesignation = '', organize = '';

  // Declaration
  static GlobalKey<FormState> declaration = GlobalKey<FormState>();
  static TextEditingController selectDeclare1 = TextEditingController();
  static TextEditingController selectDeclare2 = TextEditingController();
  static TextEditingController selectDeclare3 = TextEditingController();
  static String description = '', DeclareDate = '', place = '';

  static bool declare = false;
  static String declareDate = '';
}

