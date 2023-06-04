import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var progress_card = ['card1', 'card2', 'card3', 'card4'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Hello, Villie!",
              style: TextStyle(fontSize: 30, color: Colors.black),
            )),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg'),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            'Your Progress',
          ),
          Container(
            height: 200,
            width: 500,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: progress_card.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Column(
                      children: [
                        Text('data'),
                        CircularPercentIndicator(
                          radius: 20.0,
                          lineWidth: 5.0,
                          percent: 1.0,
                          center: new Text("100%"),
                          progressColor: Colors.green,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
