import 'package:flutter/material.dart';
import 'package:smart_home/homepage/homepage.dart';
import 'package:smart_home/schedule/cards.dart';
import 'package:smart_home/schedule/new_schedule.dart';

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
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => newschedule()),
                );
              },
            ),
            body: Padding(
              padding: EdgeInsets.fromLTRB(5, 15, 10, 0),
              child: Container(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Routine",
                        style: TextStyle(fontSize: 25),
                      ),
                    )
                  ],
                ),
              )),
            )));
  }
}
