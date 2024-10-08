import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit/utils/utils.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? name;

  const CustomFloatingActionButton({super.key, this.onPressed, this.name});

  @override
  Widget build(BuildContext context) {
    // final randString = randomString();
    return FloatingActionButton(
      heroTag: randomString(),
      onPressed: onPressed,
      child: Text(name ?? ""),
    );
  }
}
