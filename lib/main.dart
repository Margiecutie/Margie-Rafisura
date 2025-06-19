import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text(
          'Profile Info',
          style: TextStyle(
            fontFamily: 'Times New Roman',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            buildRow(
              'Name:',
              'Margie J. Rafisura',
              Color(0xFFFFE0E0), // pas
              Color(0xFFFFF5CC),
            ),
            SizedBox(height: 10),
            buildRow(
              'Age:',
              '21 years old',
              Color(0xFFDCF8C6),
              Color(0xFFD1C4E9),
            ),
            SizedBox(height: 10),
            buildRow(
              'Gender:',
              'Female',
              Color(0xFFB2EBF2),
              Color(0xFFF8BBD0),
            ),
          ],
        ),
      ),
    ),
  ));
}

Widget buildRow(String label, String value, Color labelColor, Color valueColor) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: labelColor,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontFamily: 'Times New Roman',
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: valueColor,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          value,
          style: TextStyle(
            fontFamily: 'Times New Roman',
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}

