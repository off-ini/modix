import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modix/constants.dart';
import 'package:modix/screens/home/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modix',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: 
          GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }

}
