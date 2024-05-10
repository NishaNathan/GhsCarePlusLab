import 'package:flutter/material.dart';
import 'package:ghscareplus/about/aboutmobile.dart';
import 'package:ghscareplus/appointment/appointMobile.dart';
import 'package:ghscareplus/contact/contactmobile.dart';
import 'package:ghscareplus/firstbgimage/mobilelandingPage.dart';
import 'package:ghscareplus/packageavailable/procedetmob.dart';
import 'package:ghscareplus/servicegiven/servicesMobile.dart';
import 'package:ghscareplus/trustedpartners/ourpartnersmobile.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Text(screenWidth.toString()),
          MobileLandingPage(),
          AppointmentMobile(),
          ServiceMobile(),
          AboutMobileWidget(),
          ourPartnersMobile(),
          PriceDetMob(),
          ContactUsMobile()
        ]));
  }
}
