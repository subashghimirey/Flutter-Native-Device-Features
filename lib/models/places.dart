import 'package:uuid/uuid.dart';
import 'dart:io';

const uuid = Uuid();

class Places {
  Places({required this.title, required this.image, String? id}) : id = id ?? uuid.v4();

  String id;
  String title;
  File image;
}
