import 'package:favorite_place/models/place.dart';
import 'package:favorite_place/screens/places_detail.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'No places added yet.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => PlaceDetailScreen(place: places[index]),
          ));
        },
        title: Text(
          places[index].title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
