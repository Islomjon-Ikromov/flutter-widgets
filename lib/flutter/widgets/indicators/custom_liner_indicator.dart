import 'package:flutter/material.dart';

class CustomLinearIndicator extends StatefulWidget {
  const CustomLinearIndicator({super.key});

  @override
  State<CustomLinearIndicator> createState() => _CustomLinearIndicatorState();
}

class _CustomLinearIndicatorState extends State<CustomLinearIndicator> {
  @override
  Widget build(BuildContext context) {
    return const LinearProgressIndicator(
      // value: 0.4, // it for animation
      color: Colors.blue,
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.red,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
      backgroundColor: Colors.amber,
      semanticsValue: "Value",
      minHeight: 2,
    );
  }
}
