import 'package:fav_moment/models/places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesNotifier extends StateNotifier<List<Places>> {
  PlacesNotifier() : super([]);

  void addPlace(String title) {
    final newPlace = Places(title: title);

    state = [newPlace, ...state];
  }
}

final placesProvider = StateNotifierProvider<PlacesNotifier, List<Places>>(
  (ref) => PlacesNotifier(),
);
