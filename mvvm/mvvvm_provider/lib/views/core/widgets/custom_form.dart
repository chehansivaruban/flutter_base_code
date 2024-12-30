import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({
    Key? key,
    required this.textFields,
    this.formKey,
    this.spacing = 16.0,
  }) : super(key: key);

  final List<Widget> textFields;
  final GlobalKey<FormState>? formKey;
  final double spacing;

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = widget.formKey ?? GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          widget.textFields.length * 2 - 1,
          (index) => index.isEven
              ? widget.textFields[index ~/ 2]
              : SizedBox(height: widget.spacing),
        ),
      ),
    );
  }
}
