import 'package:flutter/material.dart';
import 'package:smart_home/homepage/homepage.dart';

class schedule extends StatefulWidget {
  @override
  _scheduleState createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.fromLTRB(5, 15, 10, 0),
      child: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))
              ],
            )
          ],
        ),
      )),
    )));
  }
}
