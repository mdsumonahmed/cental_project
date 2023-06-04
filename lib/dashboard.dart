import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          child: SimpleCircularProgressBar(
                            progressColors: const [Colors.cyan],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 200,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 10, bottom: 5),
                                child: Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 10,
                                      ),
                                      Text("30 %"),
                                      Text("Interview Peap")
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 10, bottom: 5),
                                child: Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 10,
                                      ),
                                      Text("30 %"),
                                      Text("Interview Peap")
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 10, bottom: 5),
                                child: Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 10,
                                      ),
                                      Text("30 %"),
                                      Text("Interview Peap")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 3, color: Colors.red),
                      ),
                      onPressed: () {},
                      child: Text("Create Invoice"),
                    ),
                  ),
                  //text
                  InkWell(
                    child: Text("View all Invoice"),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 5,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerLeft,
              width: 350,
              color: Colors.white,
              child: Text(
                "Clients",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Color.fromARGB(255, 246, 244, 244),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 175,
                            child: Center(
                              child: Column(
                                children: [
                                  Text("CLIENT COUNT"),
                                  Text(
                                    "200",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 175,
                            child: Center(
                              child: Column(
                                children: [
                                  Text("CLIENT COUNT"),
                                  Text(
                                    "20",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
