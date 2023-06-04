import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabBattle extends StatefulWidget {
  const TabBattle({Key? key}) : super(key: key);

  @override
  State<TabBattle> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TabBattle> {
  var heightTop = 10;
  var heightBottom = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: heightTop,
            child: InkWell(
              onTap: () {
                setState(() {
                  heightTop++;
                  heightBottom--;
                });
              },
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            flex: heightBottom,
            child: InkWell(
              onTap: () {
                setState(() {
                  heightBottom++;
                  heightTop--;
                });
              },
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
