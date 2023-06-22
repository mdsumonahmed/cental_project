import 'package:cental_project/apidata.dart';
import 'package:cental_project/countfunction.dart';
import 'package:cental_project/dashboard.dart';
import 'package:cental_project/jesondata.dart';
import 'package:cental_project/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BottomNavigation> {
  int index = 0;
  var page = [Dashboard(), CountFunction(), Profile(), ApiData(), JesonData()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[index],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.grey,
          backgroundColor: Color.fromARGB(255, 246, 186, 182),
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.games), label: "Game"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.api), label: "Api Data"),
            BottomNavigationBarItem(icon: Icon(Icons.man), label: "Jeson Data"),
          ]),
    );
  }
}
