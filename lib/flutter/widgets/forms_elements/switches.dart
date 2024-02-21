import 'package:flutter/material.dart';

// ============================== CustomSwitch1 ==============================

// child: CustomSwitch1()

class CustomSwitch1 extends StatefulWidget {
  const CustomSwitch1({super.key});

  @override
  State<CustomSwitch1> createState() => _CustomSwitch1State();
}

class _CustomSwitch1State extends State<CustomSwitch1> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeColor: Colors.blue,
      inactiveThumbColor: Colors.black26,
      // inactive bg  color
      activeTrackColor: Colors.yellow,
      // active bg color
      inactiveTrackColor: Colors.white,
      // inactive dot color
      hoverColor: Colors.pink,
      // thumbColor: const MaterialStatePropertyAll<Color>(Colors.green), // always dot color
      overlayColor: const MaterialStatePropertyAll<Color>(Colors.amber),
      // shadow dot color on press
      // trackColor: const MaterialStatePropertyAll<Color>(Colors.brown), // always bg color
      trackOutlineColor: const MaterialStatePropertyAll<Color>(Colors.black),
      // border color
      focusColor: Colors.deepPurple,
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}

// ============================== CustomSwitch2 ==============================

// child: CustomSwitch2()

class CustomSwitch2 extends StatefulWidget {
  const CustomSwitch2({super.key});

  @override
  State<CustomSwitch2> createState() => _CustomSwitch2State();
}

class _CustomSwitch2State extends State<CustomSwitch2> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.amber;
        }
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.amber.withOpacity(0.54);
        }
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade400;
        }
        return null;
      },
    );

    return Switch(
      value: light,
      overlayColor: overlayColor,
      trackColor: trackColor,
      thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}
