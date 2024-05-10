import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/constants/color.dart';

class ContactUsMobile extends StatefulWidget {
  const ContactUsMobile({super.key});

  @override
  State<ContactUsMobile> createState() => _ContactUsMobileState();
}

class _ContactUsMobileState extends State<ContactUsMobile> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    List<String> departments = [
      "Biochemistry",
      "Haematology",
      "Immunology",
      "Microbiology",
      "Molecular Biology",
      "Histopathology",
      "Genomics",
      "Clinical Pathology"
    ];

    List<String> serviceList = [
      "Emergency Care",
      "IM/IV Injections",
      "Outdoor Checkup",
      "First Aid",
      "Drips",
      "Blood Testing",
    ];

    List<String> linkslist = [
      "Home",
      "About",
      "Departments",
      "Doctors",
      "Blogs",
      "Pricing",
    ];
    final List<Map<String, dynamic>> reachoutdata = [
      {"desc": "Anna Nagar,Chennai", "icon": FontAwesomeIcons.locationArrow},
      {"desc": "7871052682", "icon": FontAwesomeIcons.phone},
      {"desc": "ghscareplus@outlook.com", "icon": FontAwesomeIcons.envelope},
    ];

    return Container(
      decoration: BoxDecoration(
        gradient: radiantColor,
      ),
      height: (width >= 390 && width < 400)
          ? MediaQuery.of(context).size.height * 2.8
          : MediaQuery.of(context).size.height * 1.8,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GHS CAREPLUS LAB',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, lorem maximus consectetur adipiscing elit. Donec malesuada lorem maximus mauris.',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.pinterest,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        FaIcon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Copyright ©2024 All rights reserved |',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'This site is designed and developed by Nivi Tech',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Departments',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: departments.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.rightLong,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  FittedBox(
                                    child: Text(
                                      //maxLines: 3,
                                      departments[index],
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Services',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: serviceList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.rightLong,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      serviceList[index],
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Links',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: linkslist.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.rightLong,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    linkslist[index],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reach out to us',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: ListView.builder(
                          itemCount: reachoutdata.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Row(
                                children: [
                                  Icon(
                                    reachoutdata[index]['icon'],
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    reachoutdata[index]['desc'],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
