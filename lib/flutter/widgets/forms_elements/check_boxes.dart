// ============================== CustomCheckbox1 ==============================

// child: CustomCheckbox1()

import 'package:flutter/material.dart';

class CustomCheckbox1 extends StatefulWidget {
  const CustomCheckbox1({super.key});

  @override
  State<CustomCheckbox1> createState() => _CustomCheckbox1State();
}

class _CustomCheckbox1State extends State<CustomCheckbox1> {
  bool checkedOption1 = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                isError: true,
                tristate: true,
                value: checkedOption1,
                activeColor: Colors.blue,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                side: const BorderSide(color: Colors.green),
                checkColor: Colors.yellow,
                fillColor: const MaterialStatePropertyAll<Color>(Colors.pink),
                onChanged: (bool? value) {
                  setState(() {
                    checkedOption1 = !checkedOption1;
                  });
                },
              ),
              const Text(
                "Checkbox 1",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: checkedOption1,
                activeColor: Colors.blue,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    checkedOption1 = !checkedOption1;
                  });
                },
              ),
              const Text(
                "Checkbox 2",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          CheckboxListTile(
            value: checkedOption1,
            onChanged: (value) {
              setState(() {
                checkedOption1 = !checkedOption1;
              });
            },
            title: const Text(
              "Checkbox 3",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            activeColor: Colors.blue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            selectedTileColor: Colors.blue,
          ),
          CheckboxListTile(
            value: checkedOption1,
            onChanged: (value) {
              setState(() {
                checkedOption1 = !checkedOption1;
              });
            },
            title: const Text(
              "Checkbox 4",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),

            controlAffinity: ListTileControlAffinity.leading,
            tileColor: Colors.green,
            checkColor: Colors.yellow,
            // fillColor: MaterialStatePropertyAll<Color>(Colors.pink),
            activeColor: Colors.blue,
            secondary: const Icon(
              Icons.settings_outlined,
              size: 20,
            ),
            subtitle: const Text('Subtitle'),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            selectedTileColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
