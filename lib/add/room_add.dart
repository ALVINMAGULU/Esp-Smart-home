import 'package:flutter/material.dart';

String roomname;

List<String> outputID = <String>["1", "2", "3"];
String outID = "1";
bool brightness = false;

class roomadd extends StatefulWidget {
  @override
  _roomaddState createState() => _roomaddState();
}

class _roomaddState extends State<roomadd> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
            ),
            body: Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
              child: Container(
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Room name",
                        style: TextStyle(fontSize: 20),
                      )
                    ]),
                    SizedBox(height: 10),
                    Container(
                      height: 35,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter user name';
                            } else {
                              roomname = value.toString();
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'Room name',
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Lights",
                        style: TextStyle(fontSize: 20),
                      )
                    ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Light connection port"),
                          SizedBox(width: 50),
                          DropdownButton<String>(
                            value: outID,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 15,
                            elevation: 5,
                            style: const TextStyle(color: Colors.deepPurple),
                            dropdownColor: Colors.lightGreen,
                            items: outputID
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 20),
                                ),
                              );
                            }).toList(),
                            onChanged: (String newValue) {
                              setState(() {
                                outID = newValue;
                              });
                            },
                          )
                        ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Add Intensity control",
                        style: TextStyle(fontSize: 15),
                      ),
                      Checkbox(
                          value: brightness,
                          onChanged: (value) {
                            setState(() {
                              brightness = value;
                            });
                          })
                    ]),
                  ],
                ),
              ),
            )));
  }
}
