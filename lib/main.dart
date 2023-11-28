import 'package:flutter/material.dart';
import 'package:wizstamp/pages/vehicle_details_confirmation_page.dart';

import 'pages/home.dart';
import 'utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: ThemeColors.primaryColor),
      debugShowCheckedModeBanner: false,
      home:
      // VehicleDetailsConfirmationPage()
      const Home(),
    ); // This trailing comma makes auto-formatting nicer for build methods
  }
}
