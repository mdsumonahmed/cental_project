import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class ApiData extends StatefulWidget {
  const ApiData({Key? key}) : super(key: key);
  @override
  State<ApiData> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ApiData> {
  List data = [];
  void Getdata() async {
    http.Response response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/photos"),
    );

    setState(() {
      data = jsonDecode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    Getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Data"),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.grey,
              child: Container(
                alignment: Alignment.center,
                height: 100,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 60,
                    //child: Text(data[index]["id"].toString()),
                    backgroundImage: NetworkImage(data[index]["url"]),
                  ),
                  title: Text(data[index]["title"]),
                ),
              ),
            );
          }),
    );
  }
}
