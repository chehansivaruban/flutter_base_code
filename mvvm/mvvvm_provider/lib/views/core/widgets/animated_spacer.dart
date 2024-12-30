import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedSpacer extends StatefulWidget {
  const AnimatedSpacer({
    Key? key,
    this.height = 0.0,
    this.width = 0.0,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  State<AnimatedSpacer> createState() => _AnimatedSpacerState();
}

class _AnimatedSpacerState extends State<AnimatedSpacer> {
  double spaceHeight = 0.0;
  double spaceWidth = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(milliseconds: 100), () {
      setState(() {
        spaceHeight = widget.height;
        spaceWidth = widget.width;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: spaceHeight,
      width: spaceWidth,
      color: Colors.transparent,
    );
  }
}
