import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit/route_name.dart';
import 'package:flutter_bloc_cubit/widgets/custom_scaffold.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(title: "Home Screen | BLoC Example", children: [
      ElevatedButton(
        onPressed: () {
          log("pushAnt");
          Navigator.pushNamed(context, RouteName.ant);
        },
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.amberAccent),
        ),
        child: const CustomText("Ant"),
      ),
      ElevatedButton(
        onPressed: () {
          log("pushBee");
          Navigator.pushNamed(context, RouteName.bee);
        },
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.greenAccent),
        ),
        child: const CustomText("Bee"),
      ),
      ElevatedButton(
        onPressed: () {
          log("pushCat");
          Navigator.pushNamed(context, RouteName.cat);
        },
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.lightBlueAccent),
        ),
        child: const CustomText("Cat"),
      ),
      ElevatedButton(
        onPressed: () {
          log("dolphin");
          Navigator.pushNamed(context, RouteName.dophin);
        },
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.purpleAccent),
        ),
        child: const CustomText("Dolphin"),
      ),
    ]);
  }
}
