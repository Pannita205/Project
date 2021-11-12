import 'package:comsci_study_plan_flutter/pages/home/home_page.dart';
import 'package:comsci_study_plan_flutter/pages/years/first_year.dart';
import 'package:comsci_study_plan_flutter/pages/years/fourth_year.dart';
import 'package:comsci_study_plan_flutter/pages/years/second_year.dart';
import 'package:comsci_study_plan_flutter/pages/years/third_year.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: GoogleFonts.sarabun().fontFamily,
      ),
      routes: {
        FirstYear.routeName: (context) => const FirstYear(),
        SecondYear.routeName: (context) => const SecondYear(),
        ThirdYear.routeName: (context) => const ThirdYear(),
        FourthYear.routeName: (context) => const FourthYear(),
      },
      home: const HomePage(),
    );
  }
}

