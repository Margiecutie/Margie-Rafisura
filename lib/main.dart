import 'package:flutter/material.dart';

import 'Worldtime/home.dart';
import 'Worldtime/loading.dart';
import 'Worldtime/choose_location.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      },
    ),
  );
}
