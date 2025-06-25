import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Profile()));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 146, 11, 214),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'User Profile',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 80,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Name:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('Margie Rafisura:'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Email:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('margie03@gmail.com'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Company:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('Batangas State University TNEU Balayan'),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: Text(
                          'Contact Number:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('09926294124'),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 146, 11, 214)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
