import 'package:fav_moment/models/places.dart';
import 'package:fav_moment/widgets/place_detail.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.place});

  final Places place;

  @override
  Widget build(BuildContext context) {
    void onClick(Places place) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PlaceDetail(place: place),
      ));
    }

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: ListTile(
        onTap: () {
          onClick(place);
        },
        leading: const Icon(Icons.home),
        title: Text(place.title),
      ),
    );
  }
}
