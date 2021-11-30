import 'package:flutter/material.dart';
import 'package:smart_home/homepage/homepage.dart';
import 'package:smart_home/schedule/cards.dart';

List<Widget> schedules = <Widget>[morning, afternoon, evening];

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homepage()),
                      );
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(width: 200),
                IconButton(onPressed: () {}, icon: Icon(Icons.add))
              ],
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: schedules.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 150,
                  // color: Colors.amber[colorCodes[index]],
                  child: schedules[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 5,
              ),
            )
          ],
        ),
      )),
    )));
  }
}
