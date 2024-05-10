import 'package:flutter/material.dart';
import 'package:ghscareplus/about/aboutus.dart';
import 'package:ghscareplus/appointment/appointment.dart';
import 'package:ghscareplus/contact/contactus.dart';
import 'package:ghscareplus/firstbgimage/landingPage.dart';
import 'package:ghscareplus/packageavailable/pricedetails.dart';
import 'package:ghscareplus/servicegiven/services.dart';
import 'package:ghscareplus/trustedpartners/ourpartners.dart';

class DesktopScreens extends StatefulWidget {
  const DesktopScreens({super.key});

  @override
  State<DesktopScreens> createState() => _DesktopScreensState();
}

class _DesktopScreensState extends State<DesktopScreens> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Text(screenWidth.toString()),
        LandingPage(),
        AppointmentWidget(),
        ServiceAvailable(),
        AboutUs(),
        OurPartners(),
        PriceDetails(),
        ContactUs(),
      ]),
    );
  }
}
