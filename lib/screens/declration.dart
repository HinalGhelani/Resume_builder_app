import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Globals.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Declaration",
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
      body: Form(
        key: GlobalVar.declaration,
        child: Column(
          children: [
            Container(
              height: 54,
              width: w,
              child: Container(
                color: const Color(0xff0475FF),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: (GlobalVar.declare == true) ? h / 2 : h / 9,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Declaration",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                              value: GlobalVar.declare,
                              activeColor: const Color(0xff0475FF),
                              onChanged: (val) {
                                setState(() {
                                  GlobalVar.declare = val;
                                });
                              }),
                        ),
                      ],
                    ),
                    SizedBox(height: h / 90),
                    (GlobalVar.declare == true)
                        ? Column(
                      children: [
                        TextFormField(
                          controller: GlobalVar.selectDeclare1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter this';
                            }
                            return null;
                          },
                          onChanged: (val) {
                            setState(() {
                              GlobalVar.description = val;
                            });
                          },
                          maxLines: 1,
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
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                        SizedBox(height: h / 31),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colors.black38),
                            ),
                          ),
                        ),
                        SizedBox(height: h / 31),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          children: [
                            const Expanded(
                              child: Text(
                                "Date",
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(width: w / 15),
                            const Expanded(
                              child: Text(
                                "Place(Interview\nvenue/city)",
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: h / 40),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: GlobalVar.selectDeclare2,
                                onTap: () async {
                                  DateTime? selectedDate =
                                  await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1999),
                                    lastDate: DateTime.now(),
                                    helpText: "I will help",
                                  );
                                  if (selectedDate != null) {
                                    GlobalVar.DeclareDate =
                                        DateFormat("dd-MMM-yyyy")
                                            .format(selectedDate);
                                    setState(() {
                                      GlobalVar.selectDeclare2.text =
                                          GlobalVar.DeclareDate;
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
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                            SizedBox(width: w / 15),
                            Expanded(
                              child: TextFormField(
                                controller: GlobalVar.selectDeclare3,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter this';
                                  }
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    GlobalVar.place = val;
                                  });
                                },
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  hintText: "Eg. Surat",
                                  border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.black38),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 20,
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: h / 31),
                        Align(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Save",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    GlobalVar.declaration.currentState!
                                        .reset();
                                    GlobalVar.selectDeclare1.clear();
                                    GlobalVar.selectDeclare2.clear();
                                    GlobalVar.selectDeclare3.clear();
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
                    )
                        : Container(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xffF0F0F0),
    );
  }
}

