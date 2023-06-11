import 'package:flutter/material.dart';

void main() {
  runApp(const JesonData());
}

class JesonData extends StatelessWidget {
  const JesonData({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  MyWidget({Key? key}) : super(key: key);
  List<Map> jeson = Jeson.myjeson;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: jeson.length,
          itemBuilder: ((context, index) {
            return Card(
              color: Colors.white,
              //child: Text(jeson[index]["Geekname"]),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.grey,
                        alignment: Alignment.center,
                        height: 120,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    'https://imglarger.com/Images/before-after/ai-image-enlarger-1-after-2.jpg'),
                              ),
                            ),
                            Text(jeson[index]["Geekname"]),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.grey,
                        alignment: Alignment.center,
                        height: 120,
                        child: Column(
                          children: [
                            Text(
                              "Academic details",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            Text(jeson[index]["subject"]),
                            Text("article : ${jeson[index]["Articles"]}"),
                          ],
                        ),
                      )),
                ],
              ),
            );
          })),
    );
  }
}

class Jeson {
  static List<Map> myjeson = [
    {
      "Picture":
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.linkedin.com%2Flearning%2Fdeveloping-your-professional-image-in-a-new-job&psig=AOvVaw0rVqEslc4ZhzPBkb_ryeoh&ust=1686568687970000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKjBrZaMu_8CFQAAAAAdAAAAABAD",
      "Geekname": "Sahil kumar",
      "subject": "Data structures",
      "Articles": 10
    },
    {
      "Picture":
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.linkedin.com%2Flearning%2Fdeveloping-your-professional-image-in-a-new-job&psig=AOvVaw0rVqEslc4ZhzPBkb_ryeoh&ust=1686568687970000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKjBrZaMu_8CFQAAAAAdAAAAABAD",
      "Geekname": "Pawan singh",
      "subject": "Algorithms",
      "Articles": 16
    },
    {
      "Picture":
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.linkedin.com%2Flearning%2Fdeveloping-your-professional-image-in-a-new-job&psig=AOvVaw0rVqEslc4ZhzPBkb_ryeoh&ust=1686568687970000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKjBrZaMu_8CFQAAAAAdAAAAABAD",
      "Geekname": "Ayush Goel",
      "subject": "Networking",
      "Articles": 7
    }
  ];
}
