import 'package:favorite_place/models/place.dart';
import 'package:favorite_place/screens/add_place.dart';
import 'package:favorite_place/widgets/places_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  PlacesScreen({super.key});

  final dummyPlaces = [
    Place(title: 'My first place'),
    Place(title: 'My second place'),
    Place(title: 'My third place'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [IconButton(icon: const Icon(Icons.add), onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => const AddPlaceScreen(),
          ));
        })],
      ),
      body: PlacesList(places: dummyPlaces),
    );
  }
}
