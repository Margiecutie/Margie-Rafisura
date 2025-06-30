import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigies/pages/listitems.dart';

import 'pet.dart';

class Itemcard extends StatelessWidget {
  final Pets pets;

  const Itemcard({
    super.key,
    required this.pets
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(pets.pet),
          Text(pets.tier),
          Text(pets.passive),
        ],
      ),
    );
  }
}