import 'package:flutter/material.dart';
import 'package:gigies/pages/dashboard.dart';
import 'package:gigies/pages/itemCard.dart';

import 'pet.dart';

class listItems extends StatefulWidget {
  const listItems({super.key});

  @override
  State<listItems> createState() => _listItemsState();
}

class _listItemsState extends State<listItems> {
  List<Pets> pets = [
    Pets(pet: "Starfish", passive: "Gains additional xp per sec", tier: "Common"),
    Pets(pet: "Queen Bee", passive: "Honey maker", tier: "Divine"),
    Pets(pet: "Crab", passive: "Pinch pocket", tier: "Common"),
    Pets(pet: "Dog", passive: "Dig up random seed", tier: "Common"),
    Pets(pet: "Bunny", passive: "eat's carrort", tier: "Common")

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text('Grow a Garden'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: pets.map((pet){
        return Itemcard(pets: pet);
    }).toList(),
      ),
    );
  }
}