import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/bloc/simple/simple_cubit.dart';
import 'package:flutter_bloc_cubit/widgets/custom_floating_action_button.dart';
import 'package:flutter_bloc_cubit/widgets/custom_scaffold.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class BeeScreen extends StatelessWidget {
  const BeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SimpleCubit, SimpleState>(
      listener: (context, state) {
        log("state: ${state.count} | ${state.price}");

        if (state.count % 10 == 0) {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text("Alert Something!"),
              content: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is SimpleLoadingState) {
          return const CustomScaffold(
            title: "Bee Loading. .",
            children: [CircularProgressIndicator()],
          );
        }

        return CustomScaffold(
          title: "BeeScreen",
          customFloatingActionButton: [
            CustomFloatingActionButton(
              name: "Simple",
              onPressed: () {
                log("increment");
                context.read<SimpleCubit>().increment();
              },
            ),
          ],
          children: [
            CustomText('Count: ${state.count}'),
            CustomText('Price: ${state.price}'),
            CustomText('Message: ${state.message}'),
          ],
        );
      },
    );
  }
}
