import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/bloc/basic/counter_cubit.dart';
import 'package:flutter_bloc_cubit/widgets/custom_floating_action_button.dart';
import 'package:flutter_bloc_cubit/widgets/custom_scaffold.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class AntScreen extends StatefulWidget {
  const AntScreen({super.key});

  @override
  State<AntScreen> createState() => _AntScreenState();
}

class _AntScreenState extends State<AntScreen> {
  int locaState = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "AntScreen",
      customFloatingActionButton: [
        CustomFloatingActionButton(
          name: "+",
          onPressed: () {
            log("increment");
            context.read<CounterCubit>().increment();
          },
        ),
        CustomFloatingActionButton(
          name: "-",
          onPressed: () {
            log("decrement");

            context.read<CounterCubit>().decrement();
          },
        ),
        CustomFloatingActionButton(
          name: "local",
          onPressed: () {
            locaState++;
            log("localState: $locaState");
            setState(() {});
          },
        ),
      ],
      children: [
        BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return CustomText('CounterCubit: $state');
          },
        ),
        CustomText('localState: $locaState'),
      ],
    );
  }
}
