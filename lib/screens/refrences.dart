import 'package:flutter/material.dart';

import 'Globals.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "References",
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
            decoration: const BoxDecoration(color: Color(0xff0475FF)),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                height: h / 1.7,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Form(
                    key: GlobalVar.reference,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Reference Name",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff0475FF),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: h / 80),
                        TextFormField(
                          controller: GlobalVar.reference1,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "please enter this";
                            }
                          },
                          onChanged: (val) {
                            setState(() {
                              GlobalVar.rName = val;
                            });
                          },
                          maxLines: 1,
                          decoration: const InputDecoration(
                            hintText: "Suresh Shah",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38)),
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        SizedBox(height: h / 80),
                        const Text(
                          "Designation",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff0475FF),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: h / 80),
                        TextFormField(
                          controller: GlobalVar.reference2,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "please enter this";
                            }
                          },
                          onChanged: (val) {
                            setState(() {
                              GlobalVar.rDesignation = val;
                            });
                          },
                          maxLines: 1,
                          decoration: const InputDecoration(
                            hintText: "Marketing Manager, ID- 343434",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38)),
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        SizedBox(height: h / 80),
                        const Text(
                          "Organization/Institute",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff0475FF),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: h / 80),
                        TextFormField(
                          controller: GlobalVar.reference3,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "please enter this";
                            }
                          },
                          onChanged: (val) {
                            setState(() {
                              GlobalVar.organize = val;
                            });
                          },
                          maxLines: 1,
                          decoration: const InputDecoration(
                            hintText: "Case Point",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38)),
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        SizedBox(height: h / 80),
                        Align(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (GlobalVar.reference.currentState!
                                        .validate()) {
                                      GlobalVar.reference.currentState!.save();
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
                                    GlobalVar.reference.currentState!.reset();
                                    GlobalVar.reference1.clear();
                                    GlobalVar.reference2.clear();
                                    GlobalVar.reference3.clear();
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
              )
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xffF0F0F0),
    );
  }
}

