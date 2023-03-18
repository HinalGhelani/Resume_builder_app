
import 'package:flutter/material.dart';
import 'Globals.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Carrier Objective",
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
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xff0475FF),
            ),
          ),
          Expanded(
            flex: 12,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: GlobalVar.careerObj,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            height: h / 3,
                            width: w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Carrier Objective",
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    controller: GlobalVar.career1,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'please enter some text';
                                      }
                                      return null;
                                    },
                                    onChanged: (val) {
                                      setState(() {
                                        GlobalVar.obj = val;
                                      });
                                    },
                                    maxLines: 7,
                                    decoration: const InputDecoration(
                                        hintText: "Description",
                                        border: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black38),
                                        ),
                                        hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 20,
                                        ),
                                        focusedBorder: OutlineInputBorder()),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: h / 3.25,
                            width: w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Current Designation (Experienced Candidate)",
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    controller: GlobalVar.career2,
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return 'please enter this';
                                      }
                                      return null;
                                    },
                                    onChanged: (val) {
                                      setState(() {
                                        GlobalVar.designation = val;
                                      });
                                    },
                                    maxLines: 1,
                                    decoration: const InputDecoration(
                                      hintText: "Software Engineer",
                                      border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.black38),
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 20,
                                      ),
                                      focusedBorder: OutlineInputBorder(),
                                    ),
                                  ),
                                  const SizedBox(height: 25),
                                  Align(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (GlobalVar
                                                  .careerObj.currentState!
                                                  .validate()) {
                                                print("Process");
                                                GlobalVar
                                                    .careerObj.currentState!
                                                    .save();
                                              }
                                            });
                                          },
                                          child: const Text(
                                            "Save",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              GlobalVar.careerObj.currentState!
                                                  .reset();
                                              GlobalVar.career1.clear();
                                              GlobalVar.career2.clear();
                                            });
                                          },
                                          child: const Text(
                                            "Reset",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
        ],
      ),
      backgroundColor: const Color(0xffF0F0F0),
    );
  }
}

