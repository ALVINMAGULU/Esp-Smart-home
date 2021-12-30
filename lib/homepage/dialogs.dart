//import 'dart:js';

//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:smart_home/homepage/homepage.dart';
import 'package:smart_home/add/room_add.dart';

Messagedialog(String message, BuildContext context) {
  return showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Message"),
          content: (Container(
              height: 70,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter User name';
                      } else {
                        message = value.toString();
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        // borderSide: BorderSide(color: Colors.tealAccent)
                      ),
                      hintText: 'message',
                    ),
                  ),
                ],
              ))),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                );
              },
              child: Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                );
              },
              child: Text('SEND'),
            ),
          ],
        );
      });
}

addDialog(BuildContext context) {
  return showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => roomadd()),
                );
              },
              child: const Text('Room'),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: const Text('Device'),
            ),
          ],
        );
      });
}
