import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/instagram.png',
            width: 120.0,
          ),
          leading: Icon(Icons.camera_alt, color: Colors.black),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 16, right: 16),
              child: Stack(
                children: [
                  Icon(
                    Icons.mail_outline,
                    color: Colors.black,
                  ),
                  Positioned(
                    right: 0,
                    top: -4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 2)),
                      child: Text(
                        "1",
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        body: ListView.separated(
            padding: EdgeInsets.all(6),
            scrollDirection: Axis.horizontal,
            itemBuilder: storyBuilder,
            separatorBuilder: storySeparatorBuilder,
            itemCount: 15),
      ),
    );
  }

  Widget storySeparatorBuilder(BuildContext context, int index) {
    return SizedBox(width: 16.0);
  }

  Widget storyBuilder(BuildContext context, int index) {
    return Column(
      children: [
        Container(
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 1.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 4.0),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text("Your Story"),
      ],
    );
  }
}
