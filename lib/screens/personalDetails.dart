import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Globals.dart';

class personalDetails extends StatefulWidget {
  const personalDetails({Key? key}) : super(key: key);

  @override
  State<personalDetails> createState() => _personalDetailsState();
}

class _personalDetailsState extends State<personalDetails> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Personal Details",
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 54,
            width: w,
            child: Container(
              color: const Color(0xff0475FF),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: h,
                      width: w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 40),
                        child: Form(
                          key: GlobalVar.person,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "DOB",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                controller: GlobalVar.selectbirthDt,
                                onTap: () async {
                                  DateTime? selectedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1999),
                                    lastDate: DateTime.now(),
                                    helpText: "I will help",
                                  );
                                  if (selectedDate != null) {
                                    GlobalVar.dob = DateFormat("dd-MMM-yyyy")
                                        .format(selectedDate);
                                    setState(() {
                                      GlobalVar.selectbirthDt.text =
                                          GlobalVar.dob;
                                    });
                                  }
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter this';
                                  }
                                  return null;
                                },
                                readOnly: true,
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  hintText: "DD/MM/YYYY",
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
                              const SizedBox(height: 12),
                              const Text(
                                "Marital Status",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              RadioListTile(
                                value: "Single",
                                groupValue: GlobalVar.marital,
                                title: const Text("Single"),
                                onChanged: (val) {
                                  setState(() {
                                    GlobalVar.marital = val.toString();
                                  });
                                },
                                contentPadding: EdgeInsets.zero,
                              ),
                              RadioListTile(
                                value: "Married",
                                groupValue: GlobalVar.marital,
                                title: const Text("Married"),
                                onChanged: (val) {
                                  setState(() {
                                    GlobalVar.marital = val.toString();
                                  });
                                },
                                contentPadding: EdgeInsets.zero,
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                "Languages Known",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 12),
                              CheckboxListTile(
                                controlAffinity:
                                ListTileControlAffinity.leading,
                                title: const Text("English"),
                                value: GlobalVar.first,
                                onChanged: (val1) {
                                  setState(() {
                                    GlobalVar.first = val1!;
                                    if (GlobalVar.first) {
                                      GlobalVar.l.add('English');
                                    } else {
                                      GlobalVar.l.remove('English');
                                    }
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                              // const SizedBox(height: 8),
                              CheckboxListTile(
                                controlAffinity:
                                ListTileControlAffinity.leading,
                                title: const Text("Hindi"),
                                value: GlobalVar.second,
                                onChanged: (val2) {
                                  setState(() {
                                    GlobalVar.second = val2!;
                                    if (GlobalVar.second) {
                                      GlobalVar.l.add('Hindi');
                                    } else {
                                      GlobalVar.l.remove('Hindi');
                                    }
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                              // const SizedBox(height: 8),
                              CheckboxListTile(
                                controlAffinity:
                                ListTileControlAffinity.leading,
                                title: const Text("Gujarati"),
                                value: GlobalVar.third,
                                onChanged: (val3) {
                                  setState(() {
                                    GlobalVar.third = val3!;
                                    if (GlobalVar.third) {
                                      GlobalVar.l.add('Gujarati');
                                    } else {
                                      GlobalVar.l.remove('Gujarati');
                                    }
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                              // const SizedBox(height: 10),
                              const Text(
                                "Nationality",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 12),
                              TextFormField(
                                controller: GlobalVar.personal,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter this';
                                  }
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    GlobalVar.nation = val;
                                  });
                                },
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  hintText: "Indian",
                                  border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.black38),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 20,
                                  ),
                                  // focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          if (GlobalVar.person.currentState!
                                              .validate()) {
                                            GlobalVar.person.currentState!
                                                .save();
                                          }
                                        });
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
                                          GlobalVar.person.currentState!
                                              .reset();
                                          GlobalVar.personal.clear();
                                          GlobalVar.selectbirthDt.clear();
                                          GlobalVar.marital = '';
                                          GlobalVar.language1 = '';
                                          GlobalVar.language2 = '';
                                          GlobalVar.language3 = '';
                                          GlobalVar.first = false;
                                          GlobalVar.second = false;
                                          GlobalVar.third = false;
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
                              ),
                            ],
                          ),
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
      backgroundColor: const Color(0xffF0F0F0),
    );
  }
}

