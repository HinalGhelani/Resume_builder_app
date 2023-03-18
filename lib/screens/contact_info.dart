import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Globals.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  int indx = 0;
  String colr = '';

  getImage() async {
    PickedFile? pic = await ImagePicker().getImage(source: ImageSource.camera);
    if (pic != null) {
      setState(() {
        GlobalVar.image = File(pic.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact Details",
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
              height: 70,
              color: const Color(0xff0475FF),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          colr = "contact";
                          indx = 0;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 4,
                                  color: (colr == 'contact')
                                      ? (Colors.yellow)
                                      : (Colors.transparent)),
                            )),
                        child: const Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          colr = "photo";
                          indx = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 4,
                                    color: (colr == 'photo')
                                        ? (Colors.yellow)
                                        : (Colors.transparent)))),
                        alignment: Alignment.center,
                        child: const Text(
                          "Photo",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          IndexedStack(
            index: indx,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.all(25),
                  height: h / 1.7,
                  width: w / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: Form(
                      key: GlobalVar.conInfo,
                      onChanged: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextFormField(
                            controller: GlobalVar.contact1,
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'please enter this';
                              }
                              return null;
                            },
                            onChanged: (val) {
                              setState(() {
                                GlobalVar.name = val;
                              });
                            },
                            decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  size: 40,
                                ),
                                hintText: "Name",
                                border: UnderlineInputBorder()),
                          ),
                          TextFormField(
                            controller: GlobalVar.contact2,
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'please enter this';
                              }
                              return null;
                            },
                            onChanged: (val) {
                              setState(() {
                                GlobalVar.email = val;
                              });
                            },
                            decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  size: 40,
                                ),
                                hintText: "Email",
                                border: UnderlineInputBorder()),
                          ),
                          TextFormField(
                            controller: GlobalVar.contact3,
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'please enter this';
                              }
                              return null;
                            },
                            onChanged: (val) {
                              setState(() {
                                GlobalVar.phone = val;
                              });
                            },
                            decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.phone_android_outlined,
                                  size: 40,
                                ),
                                hintText: "Phone",
                                border: UnderlineInputBorder()),
                          ),
                          TextFormField(
                            controller: GlobalVar.contact4,
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'please enter this';
                              }
                              return null;
                            },
                            onChanged: (val) {
                              setState(() {
                                GlobalVar.address = val;
                              });
                            },
                            decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.location_on,
                                  size: 40,
                                ),
                                hintText: "Address (Street, Building No)",
                                border: UnderlineInputBorder()),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 57),
                          //   child: TextFormField(
                          //     controller: GlobalVar.contact5,
                          //     decoration: const InputDecoration(
                          //         hintText: "Address Line 2",
                          //         border: UnderlineInputBorder()),
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 57),
                          //   child: TextFormField(
                          //     controller: GlobalVar.contact6,
                          //     decoration: const InputDecoration(
                          //         hintText: "Address Line 3",
                          //         border: UnderlineInputBorder()),
                          //   ),
                          // ),
                          const SizedBox(height: 10),
                          Align(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (GlobalVar.conInfo.currentState!
                                          .validate()) {
                                        print("Process");
                                        GlobalVar.conInfo.currentState!.save();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: const Text(
                                            "Saved...!!",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          behavior: SnackBarBehavior.floating,
                                          backgroundColor: Color(0xff0475ff),
                                          duration: Duration(seconds: 5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(5)),
                                          action: SnackBarAction(
                                            onPressed: () {},
                                            label: 'Dismiss',
                                            textColor: Colors.white,
                                          ),
                                        ));
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
                                      GlobalVar.conInfo.currentState!.reset();
                                      GlobalVar.contact1.clear();
                                      GlobalVar.contact2.clear();
                                      GlobalVar.contact3.clear();
                                      GlobalVar.contact4.clear();
                                      GlobalVar.contact5.clear();
                                      GlobalVar.contact6.clear();
                                    });
                                  },
                                  child: const Text(
                                    "Reset",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: h / 3,
                  width: w / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Form(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        (GlobalVar.image == null)
                            ? CircleAvatar(
                          maxRadius: 60,
                          backgroundColor: Colors.grey.shade400,
                          child: const Text(
                            "ADD",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                            : CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.grey,
                          backgroundImage: Image.file(GlobalVar.image!,
                              fit: BoxFit.cover)
                              .image,
                        ),
                        Align(
                          alignment: const Alignment(0.3, 0.3),
                          child: SizedBox(
                            height: 25,
                            child: FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  getImage();
                                });
                              },
                              child: const Icon(Icons.add),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xffF0F0F0),
    );
  }
}

