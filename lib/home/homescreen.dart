import 'package:flutter/material.dart';
import 'package:ghscareplus/home/desktopscreen.dart';
import 'package:ghscareplus/home/mobilescreen.dart';
import 'package:ghscareplus/responsivelayout/responsivelayout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
            desktopLayout: DesktopScreens(), mobileLayout: MobileScreen())
        /* SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: const Column(children: [
          LandingPage(),
          AppointmentWidget(),
          ServiceAvailable(),
          AboutUs(),
          OurPartners(),
          PriceDetails(),
          ContactUs(),
        ]),
      ), */
        );
  }
}
