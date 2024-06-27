import 'package:fav_moment/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 102, 6, 247),
  brightness: Brightness.dark,
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(255, 56, 49, 66),
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
      titleSmall: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
      titleMedium: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
      titleLarge: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold)),
  colorScheme: colorScheme,
);

void main() {
  //in order to use the riverpod and providers
  runApp(ProviderScope(
    child: MaterialApp(
      theme: theme,
      home: const HomeScreen(),
    ),
  ));
}
