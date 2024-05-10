import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ghscareplus/commonwidget/buttonwidget.dart';
import 'package:ghscareplus/commonwidget/dropdownwidget.dart';
import 'package:ghscareplus/commonwidget/multilinetextfield.dart';
import 'package:ghscareplus/commonwidget/texformfieldwidget.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/stringres.dart';
import 'package:ghscareplus/controller/appointmentcontroller.dart';

class AppointmentMobile extends StatefulWidget {
  const AppointmentMobile({super.key});

  @override
  State<AppointmentMobile> createState() => _AppointmentMobileState();
}

class _AppointmentMobileState extends State<AppointmentMobile> {
  final AppointmentController appointCtrl = Get.put(AppointmentController());

  List<bool> isHoveredList = List.generate(3, (index) => false);

  final List<Map<String, dynamic>> appointmentList = [
    {
      'skill': 'Easy Booking',
      'icon': FontAwesomeIcons.laptopMedical,
      'desc': servicedesc
    },
    {
      'skill': 'Doctors',
      'icon': FontAwesomeIcons.userDoctor,
      'desc': servicedesc
    },
    {
      'skill': 'Best Price Guarantee',
      'icon': FontAwesomeIcons.handHoldingDollar,
      'desc': servicedesc
    },
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    bool isHoverAlertOK = false;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: radiantColor,
          ),
          //height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'WE ARE HERE FOR YOU',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Book an Appointment',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: appointCtrl.nameCtrl,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white, // Colors.white,
                      cursorHeight: 20,
                      //maxLength: maxLength,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(50),
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z\s]+')),
                      ],

                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Enter Name",
                        hintStyle: TextStyle(
                            color: Colors.grey, //Colors.grey.shade500,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white70,
                        )),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white70,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: appointCtrl.emailCtrl,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white, // Colors.white,
                      cursorHeight: 20,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^[a-zA-Z0-9_@.-]+')),
                      ],
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Enter E-mail ID",
                        hintStyle: TextStyle(
                            color: Colors.grey, //Colors.grey.shade500,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white70,
                        )),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white70,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: appointCtrl.phoneNumCtrl,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white, // Colors.white,
                        cursorHeight: 20,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Enter Mobile Number",
                          hintStyle: TextStyle(
                              color: Colors.grey, //Colors.grey.shade500,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.white70,
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.white70,
                          )),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: appointCtrl.alterPhoneCtrl,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white, // Colors.white,
                      cursorHeight: 20,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Enter Alternate Mobile Number",
                        hintStyle: TextStyle(
                            color: Colors.grey, //Colors.grey.shade500,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white70,
                        )),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white70,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MutltiLineTextField(
                      multitextController: appointCtrl.messageCtrl,
                      height: MediaQuery.of(context).size.height * 0.2,
                      hintText: 'Enter Your Message',
                      maxLength: 50,
                      width: MediaQuery.of(context).size.width,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(50),
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z\s]+')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonButtonWidget(
                      height: 50,
                      backgroundColor: buttonColor,
                      borderColor: buttonColor,
                      borderRadius: BorderRadius.circular(5.0),
                      btnText: 'Make an Appointment',
                      foregroundColor: Colors.white,
                      onPressed: () async {
                        String errorMessage = appointCtrl.validateAppointment();
                        if (errorMessage.isEmpty) {
                          //Navigator.of(context).pop();
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          );
                          bool validateEmailResult =
                              await appointCtrl.sendAppointUserEmail(
                                  name: appointCtrl.nameCtrl.text,
                                  mobile: appointCtrl.phoneNumCtrl.text,
                                  altmobno: appointCtrl.alterPhoneCtrl.text,
                                  email: appointCtrl.emailCtrl.text,
                                  msg: appointCtrl.messageCtrl.text);
                          if (validateEmailResult) {
                            Navigator.of(context).pop();
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.white,
                                  title: Center(
                                    child: Text(
                                      'Success'.toUpperCase(),
                                      style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                          width: 200,
                                          height: 100,
                                          'assets/images/successicongreen.gif'),
                                      const Text('Mail sent successfully.'),
                                    ],
                                  ),
                                  actions: <Widget>[
                                    Center(
                                      child: MouseRegion(
                                        onEnter: (_) {
                                          setState(() {
                                            isHoverAlertOK = true;
                                          });
                                        },
                                        onExit: (_) {
                                          setState(() {
                                            isHoverAlertOK = false;
                                          });
                                        },
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: isHoverAlertOK
                                                  ? const Color.fromRGBO(
                                                      1, 83, 143, 1)
                                                  : Colors.white,
                                              foregroundColor: isHoverAlertOK
                                                  ? Colors.white
                                                  : const Color.fromRGBO(
                                                      1, 83, 143, 1),
                                              side:
                                                  BorderSide(color: textColor),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0))),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: const Text('OK'),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                            appointCtrl.nameCtrl.clear();
                            appointCtrl.emailCtrl.clear();
                            appointCtrl.phoneNumCtrl.clear();
                            appointCtrl.alterPhoneCtrl.clear();
                            appointCtrl.messageCtrl.clear();
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.white,
                                  title: Center(
                                    child: Text(
                                      'Error'.toUpperCase(),
                                      style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                          width: 200,
                                          height: 100,
                                          'assets/images/erroricon.gif'),
                                      const Text('Failed to send email'),
                                    ],
                                  ),
                                  actions: <Widget>[
                                    Center(
                                      child: MouseRegion(
                                        onEnter: (_) {
                                          setState(() {
                                            isHoverAlertOK = true;
                                          });
                                        },
                                        onExit: (_) {
                                          setState(() {
                                            isHoverAlertOK = false;
                                          });
                                        },
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: isHoverAlertOK
                                                  ? const Color.fromRGBO(
                                                      1, 83, 143, 1)
                                                  : Colors.white,
                                              foregroundColor: isHoverAlertOK
                                                  ? Colors.white
                                                  : const Color.fromRGBO(
                                                      1, 83, 143, 1),
                                              side:
                                                  BorderSide(color: textColor),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0))),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: const Text('OK'),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                title: Center(
                                  child: Text(
                                    'Error'.toUpperCase(),
                                    style: TextStyle(
                                        color: textColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                        width: 200,
                                        height: 100,
                                        'assets/images/erroricon.gif'), // Success GIF

                                    Text(errorMessage), // Content of the dialog
                                  ],
                                ),
                                actions: <Widget>[
                                  Center(
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoverAlertOK = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoverAlertOK = false;
                                        });
                                      },
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: isHoverAlertOK
                                                ? const Color.fromRGBO(
                                                    1, 83, 143, 1)
                                                : Colors.white,
                                            foregroundColor: isHoverAlertOK
                                                ? Colors.white
                                                : const Color.fromRGBO(
                                                    1, 83, 143, 1),
                                            side: BorderSide(color: textColor),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0))),
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                        child: const Text('OK'),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
        SizedBox(
          height: (width >= 375 && width < 390)
              ? MediaQuery.of(context).size.height * 0.9
              : (width >= 390 && width < 400)
                  ? MediaQuery.of(context).size.height * 0.66
                  : MediaQuery.of(context).size.height * 0.6,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10, 10),
            child: Column(
              crossAxisAlignment: (width > 700 && width < 1000)
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                Text(
                  'LEARN ANYTHING',
                  textAlign: (width > 700 && width < 1000)
                      ? TextAlign.center
                      : TextAlign.left,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'We Offer Best Services',
                  textAlign: (width > 700 && width < 1000)
                      ? TextAlign.center
                      : TextAlign.left,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: appointmentList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (_) =>
                            setState(() => isHoveredList[index] = true),
                        onExit: (_) =>
                            setState(() => isHoveredList[index] = false),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                              decoration: BoxDecoration(
                                gradient: isHoveredList[index]
                                    ? radiantColor
                                    : radiantwhiteColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    FaIcon(
                                      appointmentList[index]['icon'],
                                      color: isHoveredList[index]
                                          ? Colors.white
                                          : textColor,
                                      size: 50,
                                    ),
                                    SizedBox(
                                      width: (width >= 375 && width < 390)
                                          ? 10.0
                                          : 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          appointmentList[index]['skill'],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                            color: isHoveredList[index]
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            child: Text(
                                              appointmentList[index]['desc'],
                                              style: TextStyle(
                                                color: isHoveredList[index]
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
