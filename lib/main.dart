import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/home/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDNnbkMQA7LIRDJluUmj-ho7bfErvPe94E",
          appId: '1:338329891750:web:fe247495a5b21280a0d567',
          messagingSenderId: "338329891750",
          projectId: "globalhscareplus"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GHS Careplus Laboratory',
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.hovered)) {
                  return textColor;
                }
                return Colors.white;
              }),
              foregroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.white;
                }
                return textColor;
              }),
            ),
          ),
          checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateProperty.resolveWith<Color>((states) {
              if (states.contains(MaterialState.selected)) {
                return textColor;
              }
              return Colors.white;
            }),
          ),
          textTheme: GoogleFonts.gelasioTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}
