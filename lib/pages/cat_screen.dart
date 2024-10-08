import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/bloc/standard/standard_cubit.dart';
import 'package:flutter_bloc_cubit/widgets/custom_floating_action_button.dart';
import 'package:flutter_bloc_cubit/widgets/custom_scaffold.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "CatScreen",
      customFloatingActionButton: [
        CustomFloatingActionButton(
          name: "API",
          onPressed: () {
            log("callAPI event");
            context.read<StandardCubit>().callAPI();
          },
        )
      ],
      children: [
        BlocBuilder<StandardCubit, StandardState>(
          builder: (context, state) {
            if (state is StandardHasDataState) {
              return Column(
                children: [
                  CustomText('message: ${state.message}'),
                  CustomText('mooDeng: ${state.mooDeng?.data}'),
                ],
              );
            }

            if (state is StandardLoadingState) {
              return const CircularProgressIndicator();
            }

            return const SizedBox();
          },
        ),
      ],
    );
  }
}
