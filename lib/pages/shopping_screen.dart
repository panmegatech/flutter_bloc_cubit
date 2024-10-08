import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit/widgets/custom_scaffold.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: "CatScreen",
      children: [
        CustomText('CatScreen'),
      ],
    );
  }
}
