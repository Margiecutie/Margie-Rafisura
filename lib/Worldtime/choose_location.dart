import 'package:flutter/material.dart';
import 'package:gigies/Worldtime/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTimeService> locations = [
    WorldTimeService(location: 'Nigeria', urlCont: 'Africa', urlCount: 'Lagos'),
    WorldTimeService(
        location: 'South Africa', urlCont: 'Africa', urlCount: 'Johannesburg'),
    WorldTimeService(location: 'Egypt', urlCont: 'Africa', urlCount: 'Cairo'),
    WorldTimeService(location: 'Kenya', urlCont: 'Africa', urlCount: 'Nairobi'),
    WorldTimeService(location: 'Ghana', urlCont: 'Africa', urlCount: 'Accra'),
    WorldTimeService(
        location: 'Ethiopia', urlCont: 'Africa', urlCount: 'Addis_Ababa'),
    WorldTimeService(
        location: 'Morocco', urlCont: 'Africa', urlCount: 'Casablanca'),
    WorldTimeService(
        location: 'Uganda', urlCont: 'Africa', urlCount: 'Kampala'),
    WorldTimeService(
        location: 'Tanzania', urlCont: 'Africa', urlCount: 'Dar_es_Salaam'),
  ];

  void updateTime(index) async {
    WorldTimeService instance = locations[index];
    await instance.getTime();

    Navigator.pop(context, {
      'location': instance.location ?? '-',
      'time': instance.time ?? '-',
      'urlCont': instance.urlCont ?? '-',
      'urlCount': instance.urlCount ?? '-',
      'isDaytime': instance.isDaytime ?? false,
    });
  }

  @override
  Widget build(BuildContext context) {
    print('initstate func runs');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location!),
              ),
            ),
          );
        },
      ),
    );
  }
}
