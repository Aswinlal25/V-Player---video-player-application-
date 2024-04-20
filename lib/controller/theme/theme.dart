// import 'package:flutter/material.dart';

// ThemeData lightmode = ThemeData(
//     brightness: Brightness.light,
//     colorScheme: ColorScheme.light(
//       background: Colors.white,
//       primary: Colors.black,
//       secondary: const Color.fromARGB(255, 244, 54, 114),
//     ));

// ThemeData darkmode = ThemeData(
//     brightness: Brightness.dark,
//     colorScheme: ColorScheme.dark(
//       background: const Color.fromARGB(255, 31, 31, 31),
//       primary: Colors.white,
//       secondary: const Color.fromARGB(255, 244, 54, 114),
//     ));
import 'package:flutter/material.dart';

// Define additional colors
Color primaryVariantLight = const Color.fromARGB(255, 0, 128, 255);
Color primaryVariantDark = const Color.fromARGB(255, 66, 165, 245);

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Colors.black,
      secondary:
          const Color.fromARGB(255, 244, 54, 114), // New color for light mode
      onPrimary: Colors.black54, // Text color on the primary color
      surface: Colors.black26, // Background color for surfaces, like cards
      onSurface: Colors.black,
      onSecondary: Colors.black // Text color on the surface
      ),
);

ThemeData darkmode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Color.fromARGB(255, 21, 21, 21),
      primary: Colors.white,
      secondary:
          const Color.fromARGB(255, 244, 54, 114), // New color for dark mode
      onPrimary: Colors.white54, // Text color on the primary color
      surface: Colors.white38, // Background color for surfaces, like cards
      onSurface: Colors.white,
      onSecondary: Color.fromARGB(255, 21, 21, 21),
    ));
