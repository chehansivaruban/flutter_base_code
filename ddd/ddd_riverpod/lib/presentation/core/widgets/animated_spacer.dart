import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedSpacer extends HookWidget {
  const AnimatedSpacer({
    super.key,
    this.height = 0.0,
    this.width = 0.0,
  });

  final double height;
  final double width;

  @override
  Widget build(
    BuildContext context,
  ) {
    final spaceHeight = useState(0.0);
    final spaceWidth = useState(0.0);

    useEffect(() {
      final timer = Timer(const Duration(milliseconds: 100), () {
        spaceHeight.value = height;
        spaceWidth.value = width;
      });

      return timer.cancel;
    }, []);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: spaceHeight.value,
      width: spaceWidth.value,
      color: Colors.transparent,
    );
  }
}
