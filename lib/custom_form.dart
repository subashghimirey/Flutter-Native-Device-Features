import 'package:fav_moment/providers/places_provider.dart';
import 'package:fav_moment/widgets/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

class CustomForm extends ConsumerWidget {
  CustomForm({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = TextEditingController();
    File? selectedImage;

    void onSubmit() {
      if (formKey.currentState!.validate()) {
        ref
            .read(placesProvider.notifier)
            .addPlace(titleController.text, selectedImage!);

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
                        selectedImage == null ||
                        value.trim().length < 3) {
                      return "Enter both image and title";
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                  decoration: const InputDecoration(
                    label: Text(
                      "Title",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ImageInput(
                  onPickImage: (image) {
                    selectedImage = image;
                  },
                ),
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
