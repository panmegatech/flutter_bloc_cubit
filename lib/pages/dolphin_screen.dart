import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit/widgets/custom_scaffold.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class DolphinScreen extends StatelessWidget {
  const DolphinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: "Dolphin",
      children: [
        CustomText('Dolphin'),
      ],
    );
  }
}
