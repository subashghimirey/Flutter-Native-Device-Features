import 'package:fav_moment/models/places.dart';
import 'package:flutter/material.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({super.key, required this.place});

  final Places place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: const Center(
        child: Text(
          "NO thing here yet",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
