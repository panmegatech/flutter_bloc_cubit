import 'dart:math';
import 'package:flutter/material.dart';

String randomString({int? length, bool? onlyNumber}) {
  final Random random = Random();

  final String characters;

  if (onlyNumber ?? false) {
    characters = '0123456789';
  } else {
    characters =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  }
  return List.generate(
          length ?? 5, (index) => characters[random.nextInt(characters.length)])
      .join();
}

Color randomColor() {
  return Color.fromARGB(
    255,
    Random().nextInt(256), // Random value for red
    Random().nextInt(256), // Random value for green
    Random().nextInt(256), // Random value for blue
  );
}

bool randomBoolean() {
  Random random = Random();
  return random.nextBool();
}
