import 'package:flutter/material.dart';
import 'Globals.dart';

class Interest extends StatefulWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Interest / Hobbies",
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
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Form(
                        key: GlobalVar.interestVar,
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              "Enter your skills",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 20),
                            for (int i = 0; i < GlobalVar.interest.length; i++)
                              addInterest(i),
                            const SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  GlobalVar.interest.add("");
                                  GlobalVar.addInterest
                                      .add(TextEditingController());
                                  print("111");
                                });
                              },
                              child: Container(
                                height: h / 20,
                                width: w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.black26, width: 2),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (GlobalVar.interestVar.currentState!
                                          .validate()) {
                                        GlobalVar.addInterest;
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
                                      GlobalVar.interestVar.currentState!
                                          .reset();
                                      GlobalVar.interest.clear();
                                      GlobalVar.addInterest.clear();
                                    });
                                  },
                                  child: const Text(
                                    "Reset",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xffF0F0F0),
    );
  }

  addInterest(int i) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: GlobalVar.addInterest[i],
            decoration: const InputDecoration(
              hintText: "Singing, Dancing....",
              hintStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            onChanged: (val) {
              setState(() {
                GlobalVar.interest[i] = val;
              });
            },
            validator: (val) {
              if (val == null || val.isEmpty) {
                return "please enter this";
              }
              return null;
            },
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              GlobalVar.interest.remove(GlobalVar.interest[i]);
              GlobalVar.addInterest.removeAt(i);
            });
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.black38,
          ),
        )
      ],
    );
  }
}

