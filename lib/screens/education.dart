import 'package:flutter/material.dart';

import 'Globals.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Education",
          style: TextStyle(fontSize: 23, color: Colors.white),
        ),
        leading: InkWell(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: const Icon(Icons.arrow_back_ios)),
        backgroundColor: const Color(0xff0475FF),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffF0F0F0),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: 54,
            width: w,
            color: const Color(0xff0475FF),
          ),
          Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: h,
                      width: w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 20),
                        child: Form(
                          key: GlobalVar.education,
                          onChanged: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Course/Degree",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                controller: GlobalVar.educate1,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter this';
                                  }
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    GlobalVar.degree = val;
                                  });
                                },
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  hintText: "Flutter",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black38),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                  focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                "School/College/Institute",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                  controller: GlobalVar.educate2,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'please enter this';
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    setState(() {
                                      GlobalVar.college = val;
                                    });
                                  },
                                  maxLines: 1,
                                  decoration: const InputDecoration(
                                      hintText: "J.Z.Shah Arts & Commerce",
                                      border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.black38),
                                      ),
                                      hintStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w400),
                                      focusedBorder: OutlineInputBorder())),
                              const SizedBox(height: 15),
                              const Text(
                                "Percentage",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                controller: GlobalVar.educate3,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "please enter this";
                                  }
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    GlobalVar.persentage = val;
                                  });
                                },
                                maxLines: 1,
                                decoration: const InputDecoration(
                                    hintText: "70% (or) 7.0 CGPA",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black38),
                                    ),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Colors.black38),
                                    focusedBorder: OutlineInputBorder()),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                "Year of Pass",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                controller: GlobalVar.educate4,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "please enter this";
                                  }
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    GlobalVar.year = val;
                                  });
                                },
                                maxLines: 1,
                                decoration: const InputDecoration(
                                    hintText: "2019",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black38),
                                    ),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Colors.black38),
                                    focusedBorder: OutlineInputBorder()),
                              ),
                              const SizedBox(height: 30),
                              Align(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        if (GlobalVar.education.currentState!
                                            .validate()) {
                                          GlobalVar.education.currentState!.save();
                                        }
                                      },
                                      child: const Text(
                                        "Save",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          GlobalVar.education.currentState!.reset();
                                          GlobalVar.educate1.clear();
                                          GlobalVar.educate2.clear();
                                          GlobalVar.educate3.clear();
                                          GlobalVar.educate4.clear();
                                        });
                                      },
                                      child: const Text(
                                        "Reset",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
