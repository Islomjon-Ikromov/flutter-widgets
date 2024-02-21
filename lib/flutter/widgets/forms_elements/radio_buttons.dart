// ============================== CustomRadioButton1 ==============================

// child: CustomRadioButton1()

import 'package:flutter/material.dart';

class CustomRadioButton1 extends StatefulWidget {
  const CustomRadioButton1({super.key});

  @override
  State<CustomRadioButton1> createState() => _CustomRadioButton1State();
}

class _CustomRadioButton1State extends State<CustomRadioButton1> {
  int selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: selectedRadio,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    selectedRadio = value!;
                  });
                },
              ),
              const Text(
                "Radio 1",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: selectedRadio,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    selectedRadio = value!;
                  });
                },
              ),
              const Text(
                "Radio 2",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: selectedRadio,
                activeColor: Colors.blue,
                hoverColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    selectedRadio = value!;
                  });
                },
              ),
              const Text(
                "Radio 3",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
