import 'package:cental_project/countfunction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Invoice extends StatelessWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://imglarger.com/Images/before-after/ai-image-enlarger-1-after-2.jpg')),
          ),
          TextButton(
              onPressed: null,
              child: Text(
                'Send an invoice to',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 35, color: Colors.blueGrey),
              )),
          Text(
            'Alan Cooper',
            style: TextStyle(fontSize: 30),
          ),
          Text('Service Name'),
          Text(
            'Service Name',
            style: TextStyle(fontSize: 25),
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.grey,
            child: CountFunction(),
          ),
        ],
      ),
    );
  }
}
