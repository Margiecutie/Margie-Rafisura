import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        backgroundColor: Colors.pink[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ay',
              style: TextStyle(
                fontSize: 24,
                color: Colors.lightBlue[900],
                fontWeight: FontWeight.w600,
                  fontFamily: 'Courier New'
              ),
            ),
            Text(
              'Wow',
              style: TextStyle(
                fontSize: 24,
                color: Colors.purple[800],
                fontWeight: FontWeight.w600,
                fontFamily: 'Times New Roman'
              ),
            ),
            Text(
              'Ang Galing',
              style: TextStyle(
                fontSize: 24,
                color: Colors.green[800],
                fontWeight: FontWeight.w600,
                  fontFamily: 'Arial'
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}