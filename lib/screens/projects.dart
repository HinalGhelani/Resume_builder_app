import 'package:flutter/material.dart';
import 'Globals.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool first = false;
  bool second = false;
  bool third = false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Projects",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: const Color(0xff0475FF),
        elevation: 0,
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: 54,
            width: w,
            decoration: const BoxDecoration(color: Color(0xff0475FF)),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: h,
                    width: w,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Form(
                        key: GlobalVar.project,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Project Tittle",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0475FF),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: h / 80),
                            TextFormField(
                              controller: GlobalVar.project1,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter this';
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() {
                                  GlobalVar.proTittle = val;
                                });
                              },
                              maxLines: 1,
                              decoration: const InputDecoration(
                                hintText: "Resume Builder App",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                ),
                                // focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: h / 50),
                            const Text(
                              "Technologies",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0475FF),
                                  fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    value: first,
                                    onChanged: (val1) {
                                      setState(() {
                                        first = !first;
                                      });
                                    }),
                                const Text(
                                  "C Programming",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black38),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    value: second,
                                    onChanged: (val2) {
                                      setState(() {
                                        second = !second;
                                      });
                                    }),
                                const Text(
                                  "C++",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black38),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    value: third,
                                    onChanged: (val3) {
                                      setState(() {
                                        third = !third;
                                      });
                                    }),
                                const Text(
                                  "Flutter",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black38),
                                ),
                              ],
                            ),
                            const Text(
                              "Roles",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0475FF),
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: h / 80),
                            TextFormField(
                              controller: GlobalVar.project2,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter this';
                                }
                                return null;
                              },
                              maxLines: 1,
                              decoration: const InputDecoration(
                                hintText:
                                "Organize team members, Code analysis",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                ),
                                // focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: h / 50),
                            const Text(
                              "Technologies",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0475FF),
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: h / 80),
                            TextFormField(
                              controller: GlobalVar.project3,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter this';
                                }
                                return null;
                              },
                              maxLines: 1,
                              decoration: const InputDecoration(
                                hintText: "5 -  Programmers",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                ),
                                // focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: h / 50),
                            const Text(
                              "Project Description",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0475FF),
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: h / 80),
                            TextFormField(
                              controller: GlobalVar.project4,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter this';
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() {
                                  GlobalVar.proDescription = val;
                                });
                              },
                              maxLines: 1,
                              decoration: const InputDecoration(
                                hintText: "Enter Your Project Description",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                ),
                                // focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: h / 50),
                            Align(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        if (GlobalVar.project.currentState!
                                            .validate()) {
                                          GlobalVar.project.currentState!
                                              .save();
                                        }
                                      });
                                    },
                                    child: const Text(
                                      "Save",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        GlobalVar.project.currentState!.reset();
                                        GlobalVar.project1.clear();
                                        GlobalVar.project2.clear();
                                        GlobalVar.project3.clear();
                                        GlobalVar.project4.clear();
                                        first = false;
                                        second = false;
                                        third = false;
                                      });
                                    },
                                    child: const Text(
                                      "Reset",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
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
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffF0F0F0),
    );
  }
}

