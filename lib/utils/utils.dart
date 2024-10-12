import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit/model/cart/cart_item.dart';

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

CartItem randomCartItem() {
  final List<CartItem> cartItems = [
    const CartItem(name: "apple", id: "1", price: 10, quantity: 1),
    const CartItem(name: "banana", id: "2", price: 20, quantity: 2),
    const CartItem(name: "carrot", id: "3", price: 30, quantity: 1),
    const CartItem(name: "dates", id: "4", price: 15, quantity: 3),
    const CartItem(name: "eggplant", id: "5", price: 25, quantity: 1),
    const CartItem(name: "fig", id: "6", price: 18, quantity: 2),
    const CartItem(name: "grape", id: "7", price: 22, quantity: 1),
    const CartItem(name: "honeydew", id: "8", price: 35, quantity: 1),
    const CartItem(name: "iceberg lettuce", id: "9", price: 12, quantity: 3),
    const CartItem(name: "jackfruit", id: "10", price: 50, quantity: 1),
    const CartItem(name: "kiwi", id: "11", price: 28, quantity: 2),
    const CartItem(name: "lemon", id: "12", price: 14, quantity: 2),
    const CartItem(name: "mango", id: "13", price: 32, quantity: 1),
    const CartItem(name: "nectarine", id: "14", price: 26, quantity: 3),
    const CartItem(name: "orange", id: "15", price: 18, quantity: 2),
    const CartItem(name: "papaya", id: "16", price: 22, quantity: 1),
    const CartItem(name: "quince", id: "17", price: 34, quantity: 2),
    const CartItem(name: "raspberry", id: "18", price: 40, quantity: 1),
    const CartItem(name: "strawberry", id: "19", price: 30, quantity: 2),
    const CartItem(name: "tomato", id: "20", price: 15, quantity: 4),
  ];
  final random = Random();
  return cartItems[random.nextInt(cartItems.length)];
}
