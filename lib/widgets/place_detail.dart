import 'package:fav_moment/models/places.dart';
import 'package:flutter/material.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({super.key, required this.place});

  final Places place;

  @override
  Widget build(BuildContext context) {
    Widget content = Stack(
      children: [
        Image(
          image: FileImage(place.image),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
      ],
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(place.title),
        ),
        body: content);
  }
}
