import 'package:flutter/material.dart';

Widget card1 = Card(
  child: Container(
    child: Column(
      children: [
        Text(
          "Living room",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.lightbulb_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
            Text(
              "23C",
              style: TextStyle(fontSize: 20),
            )
          ],
        )
      ],
    ),
  ),
);
Widget card2 = Card(
  child: Container(),
);
