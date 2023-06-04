import 'package:cental_project/bottomnavigation.dart';
import 'package:cental_project/dashboard.dart';
import 'package:cental_project/profile.dart';
import 'package:cental_project/profile_invoice.dart';
import 'package:cental_project/tab_battle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// demo commit
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}
