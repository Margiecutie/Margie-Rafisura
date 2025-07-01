import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:gigies/pages/dashboard.dart';
import 'package:gigies/pages/listitems.dart';
import 'package:gigies/pages/newpet.dart';

void main() {
  runApp(MaterialApp(
      routes:{
        '/' : (context) => listItems(),
        '/add' : (context) => NewPet(),
      }
  ));
}

