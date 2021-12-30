import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class room {
  String name;
  bool temp;
  bool video;
  bool motionSensor;

  room(String _name, bool _temp, bool _video, bool _motionsensor) {
    name = _name;
    temp = _temp;
    video = _video;
    motionSensor = _motionsensor;
  }
}
