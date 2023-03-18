import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Globals.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Experience",
          style: TextStyle(fontSize: 20, color: Colors.white),
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
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Form(
                        key: GlobalVar.experience,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Company Name",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: GlobalVar.expert1,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "please enter this";
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() {
                                  GlobalVar.comName = val;
                                });
                              },
                              maxLines: 1,
                              decoration: const InputDecoration(
                                hintText: "New Enterprise, San Francisco",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Designation",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: GlobalVar.expert2,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "please enter this";
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() {
                                  GlobalVar.institute = val;
                                });
                              },
                              maxLines: 1,
                              decoration: const InputDecoration(
                                hintText: "Quality Test Engineer",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Roles (optional)",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: GlobalVar.expert3,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "please enter this";
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() {
                                  GlobalVar.role = val;
                                });
                              },
                              minLines: 1,
                              maxLines: 5,
                              decoration: const InputDecoration(
                                hintText:
                                "Working with team members to\ncome up with new concepts and\nproduct analysis...",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "Employed Status",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: RadioListTile(
                                    value: "preEmp",
                                    groupValue: GlobalVar.expert,
                                    title: const Text("Previously Employed"),
                                    onChanged: (val) {
                                      setState(() {
                                        GlobalVar.expert = val.toString();
                                      });
                                    },
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                ),
                                Expanded(
                                  child: RadioListTile(
                                    value: "curEmp",
                                    groupValue: GlobalVar.expert,
                                    title: const Text("Currently Employed"),
                                    onChanged: (val) {
                                      setState(() {
                                        GlobalVar.expert = val.toString();
                                      });
                                    },
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Colors.black38),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Date Joined",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(height: 10),
                                      TextFormField(
                                        controller: GlobalVar.dateJoint,
                                        onTap: () async {
                                          DateTime? selectedDate =
                                          await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1999),
                                            lastDate: DateTime.now(),
                                          );
                                          if (selectedDate != null) {
                                            GlobalVar.dJoin =
                                                DateFormat("dd/MM/yyyy")
                                                    .format(selectedDate);
                                            setState(() {
                                              GlobalVar.dateJoint.text =
                                                  GlobalVar.dJoin;
                                            });
                                          }
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "please enter this";
                                          }
                                          return null;
                                        },
                                        maxLines: 1,
                                        readOnly: true,
                                        decoration: const InputDecoration(
                                            hintText: "DD/MM/YYYY",
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black38),
                                            ),
                                            focusedBorder:
                                            OutlineInputBorder()),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: (GlobalVar.expert == "preEmp")
                                      ? Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Date Exit",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(height: 10),
                                      TextFormField(
                                        controller: GlobalVar.dateExit,
                                        onTap: () async {
                                          DateTime? selectedDate =
                                          await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1999),
                                            lastDate: DateTime.now(),
                                          );
                                          if (selectedDate != null) {
                                            GlobalVar.dExit =
                                                DateFormat("dd/MM/yyyy")
                                                    .format(selectedDate);
                                            setState(() {
                                              GlobalVar.dateExit.text =
                                                  GlobalVar.dExit;
                                            });
                                          }
                                        },
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty) {
                                            return "please enter this";
                                          }
                                          return null;
                                        },
                                        maxLines: 1,
                                        readOnly: true,
                                        decoration: const InputDecoration(
                                            hintText: "DD/MM/YYYY",
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black38),
                                            ),
                                            focusedBorder:
                                            OutlineInputBorder()),
                                      )
                                    ],
                                  )
                                      : Container(),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            Align(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      if (GlobalVar.experience.currentState!
                                          .validate()) {
                                        GlobalVar.experience.currentState!
                                            .save();
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
                                        GlobalVar.experience.currentState!
                                            .reset();
                                        GlobalVar.expert1.clear();
                                        GlobalVar.expert2.clear();
                                        GlobalVar.expert3.clear();
                                        GlobalVar.dateJoint.clear();
                                        GlobalVar.dateExit.clear();
                                        GlobalVar.expert = '';
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
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xffF0F0F0),
    );
  }
}
