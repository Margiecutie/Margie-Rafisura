import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Grow A Garden Pet Info',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(252, 50, 166, 5),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 0, right: 0),
        child: Column(
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.person,
                  size: 177,
                ),
              ],
            ),

            const SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'All',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(width: 37),
                Text(
                  'Common',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(width: 37),
                Text(
                  'Uncommon',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),


            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _iconWithLabel(Icons.person, 'Common'),
                    const SizedBox(width: 37),
                    _iconWithLabel(Icons.person, 'Uncommon'),
                  ],
                ),
                const SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _iconWithLabel(Icons.person, 'Uncommon'),
                    const SizedBox(width: 37),
                    _iconWithLabel(Icons.person, 'Common'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconWithLabel(IconData icon, String label) {
    return Column(
      children: [
        Icon(
          icon,
          size: 117,
        ),
        const SizedBox(height: 7),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
