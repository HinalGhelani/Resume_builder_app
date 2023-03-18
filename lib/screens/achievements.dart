import 'package:flutter/material.dart';
import 'Globals.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Achievements",
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
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Form(
                        key: GlobalVar.achievement,
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              "Enter Achievements",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 20),
                            for (int i = 0; i < GlobalVar.achive.length; i++)
                              addAchievement(i),
                            const SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  GlobalVar.achive.add("");
                                  GlobalVar.addAchive
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
                                      if (GlobalVar.achievement.currentState!
                                          .validate()) {
                                        GlobalVar.addtech;
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
                                      GlobalVar.achievement.currentState!
                                          .reset();
                                      GlobalVar.achive.clear();
                                      GlobalVar.addAchive.clear();
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

  addAchievement(int i) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: GlobalVar.addAchive[i],
            onChanged: (val) {
              setState(() {
                GlobalVar.achive[i] = val;
              });
            },
            decoration: const InputDecoration(
              hintText: "Exceeded sales 17% average",
              hintStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
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
              GlobalVar.achive.remove(GlobalVar.achive[i]);
              GlobalVar.addAchive.removeAt(i);
            });
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.black38,
          ),
        ),
      ],
    );
  }
}
