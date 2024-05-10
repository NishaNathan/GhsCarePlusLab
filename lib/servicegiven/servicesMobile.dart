import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/stringres.dart';

class ServiceMobile extends StatefulWidget {
  const ServiceMobile({super.key});

  @override
  State<ServiceMobile> createState() => _ServiceMobileState();
}

class _ServiceMobileState extends State<ServiceMobile> {
  late List<bool> isHoverService;

  @override
  void initState() {
    super.initState();
    isHoverService = List.generate(6, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    final List<Map<String, dynamic>> gridList = [
      {
        'skill': 'Emergency Care',
        'icon': FontAwesomeIcons.userDoctor,
        'desc': servicedesc
      },
      {
        'skill': 'IM/IV injections',
        'icon': FontAwesomeIcons.bedPulse,
        'desc': servicedesc
      },
      {
        'skill': 'Outdoor Checkup',
        'icon': FontAwesomeIcons.stethoscope,
        'desc': servicedesc
      },
      {
        'skill': 'First Aid',
        'icon': FontAwesomeIcons.truckMedical,
        'desc': servicedesc
      },
      {
        'skill': 'Drips',
        'icon': FontAwesomeIcons.capsules,
        'desc': servicedesc
      },
      {
        'skill': 'Blood Testing',
        'icon': FontAwesomeIcons.microscope,
        'desc': servicedesc
      },
    ];

    return Container(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      height: (width >= 375 && width < 390)
          ? MediaQuery.of(context).size.height * 2.5
          : (width >= 375 && width < 390)
              ? MediaQuery.of(context).size.height * 2.7
              : (width >= 390 && width < 400)
                  ? MediaQuery.of(context).size.height * 2
                  : MediaQuery.of(context).size.height * 1.8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'SERVICES',
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: width,
            child: const Text(
              textAlign: TextAlign.center,
              'Health Service We Provide',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: gridList.length,
              // Replace with the actual length of your data list
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    onEnter: (_) =>
                        setState(() => isHoverService[index] = true),
                    onExit: (_) =>
                        setState(() => isHoverService[index] = false),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: isHoverService[index]
                            ? radiantColor
                            : radiantwhiteColor,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        child: Column(children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: isHoverService[index]
                                    ? radiantTextColor
                                    : radiantColor),
                            child: Center(
                              child: FaIcon(
                                gridList[index]['icon'],
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            gridList[index]['skill'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: isHoverService[index]
                                  ? Colors.white
                                  : textColor, //textColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              gridList[index]['desc'],
                              style: TextStyle(
                                  color: isHoverService[index]
                                      ? Colors.white
                                      : Colors.grey.shade800),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
