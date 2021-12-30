//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smart_home/homepage/cards.dart';
import 'package:smart_home/homepage/dialogs.dart';
import 'package:smart_home/settings/mainpage.dart';
import 'package:smart_home/schedule/schedule_main.dart';

List<Widget> cards = <Widget>[card1, card2];

class homepage extends StatefulWidget {
//  const homepage({ Key? key }) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: Colors.blueAccent,
            child: Container(
              height: 70,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  
                    Column(children: [
                      IconButton(
                          onPressed: () {
                            addDialog(context);
                          },
                          icon: Icon(Icons.add)),
                      Text("add")
                    ]),
                    Column(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => schedule()),
                            );
                          },
                          icon: Icon(Icons.list)),
                      Text("Schedule")
                    ]),
                    Column(children: [
                      IconButton(
                          onPressed: () {
                            String message = "message";
                            Messagedialog(message, context);
                          },
                          icon: Icon(Icons.send)),
                      Text("message")
                    ]),
                  ]),
            ),
          ),
          body: Padding(
              padding: EdgeInsets.fromLTRB(5, 40, 10, 5),
              child: SingleChildScrollView(
                  child: Column(children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 250,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => settings()),
                              );
                            },
                            icon: Icon(Icons.settings)),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/alvo.jpg",
                          ),
                          radius: 10,
                        ),
                      ],
                    )),

                Center(
                  child: Text(
                    "Good morning",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                        child: Container(
                      height: 150,
                      width: 150,
                    )),
                    Card(
                        child: Container(
                      height: 150,
                      width: 150,
                    ))
                  ],
                ),
                // SizedBox(height: 100),
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: cards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 150,
                      // color: Colors.amber[colorCodes[index]],
                      child: cards[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    height: 5,
                  ),
                )
              ])))),
    );
  }
}
