import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomForm extends HookConsumerWidget {
  const CustomForm({
    super.key,
    required this.textFields,
    this.formKey,
    this.spacing = 16.0,
  });

  final List<Widget> textFields;
  final GlobalKey<FormState>? formKey;
  final double spacing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final key = formKey ?? useMemoized(() => GlobalKey<FormState>());

    return Form(
      key: key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          textFields.length * 2 - 1,
          (index) =>
              index.isEven ? textFields[index ~/ 2] : SizedBox(height: spacing),
        ),
      ),
    );
  }
}
