import 'package:fav_moment/custom_form.dart';
import 'package:fav_moment/providers/places_provider.dart';
import 'package:fav_moment/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  void onClick() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CustomForm(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final places = ref.watch(placesProvider);

    Widget content = Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      child: ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) => ListItem(place: places[index])),
    );

    if (places.isEmpty) {
      content = Center(
          child: Text(
        "Nothing added yet",
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Theme.of(context).colorScheme.secondary),
      ));
    }

    return SafeArea(
      child: Scaffold(
          // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            title: const Text("Your Favorite Moments"),
            actions: [
              IconButton(onPressed: onClick, icon: const Icon(Icons.add))
            ],
          ),
          body: content),
    );
  }
}
