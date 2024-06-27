import 'package:fav_moment/providers/places_provider.dart';
import 'package:fav_moment/widgets/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomForm extends ConsumerWidget {
  CustomForm({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = TextEditingController();

    void onSubmit() {
      if (formKey.currentState!.validate()) {
        ref.read(placesProvider.notifier).addPlace(titleController.text);

        Navigator.of(context).pop();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new place"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  // maxLength: 50,
                  controller: titleController,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.trim().length < 3) {
                      return "Enter title correctly";
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    label: Text("Title"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ImageInput(),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                    onPressed: onSubmit,
                    icon: const Icon(Icons.add),
                    label: const Text("Add Place"))
              ],
            )),
      ),
    );
  }
}
