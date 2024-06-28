import 'package:fav_moment/models/places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

class PlacesNotifier extends StateNotifier<List<Places>> {
  PlacesNotifier() : super([]);

  void addPlace(String title, File image) {
    final newPlace = Places(title: title, image: image);

    state = [newPlace, ...state];
  }
}

final placesProvider = StateNotifierProvider<PlacesNotifier, List<Places>>(
  (ref) => PlacesNotifier(),
);
