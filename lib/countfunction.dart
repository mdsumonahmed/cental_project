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
  BoxState boxstate = BoxState.cross;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: boxstate == BoxState.cross
                ? const Icon(Icons.close)
                : boxstate == BoxState.circle
                    ? const Icon(Icons.circle)
                    : Container(),
          ),
          Container(
            color: Colors.blue,
            child: boxstate == BoxState.cross
                ? const Icon(Icons.close)
                : boxstate == BoxState.circle
                    ? const Icon(Icons.circle)
                    : Container(),
          ),
          Container(
            color: Colors.blue,
            child: boxstate == BoxState.cross
                ? const Icon(Icons.close)
                : boxstate == BoxState.circle
                    ? const Icon(Icons.circle)
                    : Container(),
          ),
          Container(
            color: Colors.blue,
            child: boxstate == BoxState.cross
                ? const Icon(Icons.close)
                : boxstate == BoxState.circle
                    ? const Icon(Icons.circle)
                    : Container(),
          ),
          Container(
            color: Colors.blue,
            child: boxstate == BoxState.cross
                ? const Icon(Icons.close)
                : boxstate == BoxState.circle
                    ? const Icon(Icons.circle)
                    : Container(),
          ),
          Container(
            color: Colors.blue,
            child: boxstate == BoxState.cross
                ? const Icon(Icons.close)
                : boxstate == BoxState.circle
                    ? const Icon(Icons.circle)
                    : Container(),
          ),
          Container(
            color: Colors.blue,
            child: boxstate == BoxState.cross
                ? const Icon(Icons.close)
                : boxstate == BoxState.circle
                    ? const Icon(Icons.circle)
                    : Container(),
          ),
          Container(
            color: Colors.blue,
            child: boxstate == BoxState.cross
                ? const Icon(Icons.close)
                : boxstate == BoxState.circle
                    ? const Icon(Icons.circle)
                    : Container(),
          ),
          Container(
            color: Colors.blue,
            child: boxstate == BoxState.cross
                ? const Icon(Icons.close)
                : boxstate == BoxState.circle
                    ? const Icon(Icons.circle)
                    : Container(),
          ),
        ],
      ),
    );
  }
}

enum BoxState {
  cross,
  circle,
  empty,
}
