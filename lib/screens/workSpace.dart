import 'package:flutter/material.dart';

class workSpace extends StatefulWidget {
  const workSpace({Key? key}) : super(key: key);

  @override
  State<workSpace> createState() => _workSpaceState();
}

class _workSpaceState extends State<workSpace> {
  List<Map<String, String>> l = [
    {
      'icon': 'assets/images/ContactInfo.png',
      'name': 'Contact info',
      'routes': 'contactInfo',
    },
    {
      'icon': 'assets/images/CarrierObjective.png',
      'name': 'Carrier Objective',
      'routes': 'carrierObjective',
    },
    {
      'icon': 'assets/images/PersonalDetail.png',
      'name': 'Personal Details',
      'routes': 'personalDetails',
    },
    {
      'icon': 'assets/images/Education.png',
      'name': 'Education',
      'routes': 'Education',
    },
    {
      'icon': 'assets/images/Experience.png',
      'name': 'Experience',
      'routes': 'Experience',
    },
    {
      'icon': 'assets/images/TechnicalSkill.png',
      'name': 'Technical Skill',
      'routes': 'TechnicalSkill',
    },
    {
      'icon': 'assets/images/Hobbies.png',
      'name': 'Interest/Hobbies',
      'routes': 'Interest',
    },
    {
      'icon': 'assets/images/Projects.png',
      'name': 'Projects',
      'routes': 'Projects',
    },
    {
      'icon': 'assets/images/Achievements.png',
      'name': 'Achievements',
      'routes': 'Achievements',
    },
    {
      'icon': 'assets/images/References.png',
      'name': 'References',
      'routes': 'References',
    },
    {
      'icon': 'assets/images/Declaration.png',
      'name': 'Declaration',
      'routes': 'Declaration',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Resume Workspace",
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'pdf');
              },
              icon: const Icon(Icons.picture_as_pdf))
        ],
        backgroundColor: const Color(0xff0475FF),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: const Color(0xff0475FF),
              child: const Text(
                "Build Option",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                  children: l.map((e) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, e['routes']!);
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 2,
                              color: Color(0xffEAEAEA),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "${e['icon']}",
                                height: 40,
                              ),
                              const SizedBox(width: 30),
                              Text(
                                "${e['name']}",
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList()),
            ),
          )
        ],
      ),
    );
  }
}

