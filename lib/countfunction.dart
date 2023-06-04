import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CountFunction extends StatefulWidget {
  const CountFunction({Key? key}) : super(key: key);

  @override
  State<CountFunction> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CountFunction> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(count.toString()),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text('Increase')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count--;
                });
              },
              child: Text('Decrease')),
        ],
      ),
    );
  }
}
