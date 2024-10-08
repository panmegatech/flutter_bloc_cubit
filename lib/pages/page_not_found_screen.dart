import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit/widgets/custom_scaffold.dart';
import 'package:flutter_bloc_cubit/widgets/custom_text.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      title: "PageNotFoundScreen",
      children: [
        CustomText('PageNotFoundScreen'),
      ],
    );
  }
}
