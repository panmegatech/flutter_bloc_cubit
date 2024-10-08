import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/bloc/advanced/advanced_bloc.dart';
import 'package:flutter_bloc_cubit/utils/utils.dart';
import 'package:flutter_bloc_cubit/widgets/custom_floating_action_button.dart';
import 'package:flutter_bloc_cubit/widgets/custom_scaffold.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class DolphinScreen extends StatelessWidget {
  const DolphinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Dolphin",
      customFloatingActionButton: [
        CustomFloatingActionButton(
          name: "Show",
          onPressed: () {
            log("Show Advanced");
            context.read<AdvancedBloc>().add(ShowAdvancedEvent());
          },
        ),
        CustomFloatingActionButton(
          name: "Add+",
          onPressed: () {
            log("Add Advanced");
            context
                .read<AdvancedBloc>()
                .add(const AddAdvancedEvent(a: 100, b: 265));
          },
        ),
        CustomFloatingActionButton(
          name: "Update",
          onPressed: () {
            log("Update Advanced");

            context
                .read<AdvancedBloc>()
                .add(const UpdateAdvancedEvent(data: "panda"));
          },
        ),
        CustomFloatingActionButton(
          name: "Delete-",
          onPressed: () {
            log("Delete Advanced");

            context
                .read<AdvancedBloc>()
                .add(const DeleteAdvancedEvent(id: "1234"));
          },
        ),
      ],
      children: [
        BlocBuilder<AdvancedBloc, AdvancedState>(
          builder: (context, state) {
            if (state is AdvancedLoadingState) {
              return const CircularProgressIndicator();
            }
            if (state is AdvancedErrorState) {
              return CustomText(
                '${state.message}',
                color: Colors.red,
              );
            }
            if (state is AdvancedHasDataState) {
              return Column(
                children: [
                  CustomText(
                    '(HasData)',
                    color: randomColor(),
                  ),
                  CustomText('message: ${state.message}'),
                  CustomText('status: ${state.status}'),
                ],
              );
            }
            return const CustomText('Dolphin Welcome');
          },
        ),
      ],
    );
  }
}
