import 'package:flutter/material.dart';

class CustomCircularIndicator extends StatefulWidget {
  const CustomCircularIndicator({super.key});

  @override
  State<CustomCircularIndicator> createState() =>
      _CustomCircularIndicatorState();
}

class _CustomCircularIndicatorState extends State<CustomCircularIndicator> {
  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: Colors.blue,
      strokeWidth: 2,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
      strokeCap: StrokeCap.round,
      // value: 0.5, // it for animations
      backgroundColor: Colors.amber,
      semanticsLabel: "Label",
      semanticsValue: "Value",
      strokeAlign: 1,
    );
  }
}
