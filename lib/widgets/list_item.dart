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
      color: const Color.fromARGB(255, 112, 113, 109),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      elevation: 5,
      child: ListTile(
        onTap: () {
          onClick(place);
        },
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: FileImage(place.image),
        ),
        title: Text(place.title),
      ),
    );
  }
}
