import 'package:flutter/material.dart';
import 'package:portfolioWeb/landing_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Coolors.secondaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "My Portfolio",
//      home: LandingPage(),
//      debugShowCheckedModeBanner: false,
//
//    );
//  }
//}
