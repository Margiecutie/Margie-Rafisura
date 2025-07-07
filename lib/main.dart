import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:gigies/pages/dashboard.dart';
import 'package:gigies/pages/listitems.dart';
import 'package:gigies/pages/newpet.dart';
import 'Worldtime/home.dart';
import 'Worldtime/choose_location.dart';
import 'Worldtime/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/add': (context) => NewPet(),

      //Worldtime Routes
      '/home': (context) => Home(),
      '/': (context) => ChooseLocation(),
      '/load': (context) => Loading(),
    },
  ));
}
