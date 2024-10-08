import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit/widgets/custom_floating_action_button.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class CustomScaffold extends StatelessWidget {
  final List<Widget> children;

  final String title;

  final List<CustomFloatingActionButton>? customFloatingActionButton;
  const CustomScaffold({
    super.key,
    required this.children,
    required this.title,
    this.customFloatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <CustomFloatingActionButton>[
          ...customFloatingActionButton ?? [],
        ],
      ),
    );
  }
}
