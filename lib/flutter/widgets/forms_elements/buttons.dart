import 'package:flutter/material.dart';

// ============================== CustomButton1 ==============================

// child: CustomButton1()

class CustomButton1 extends StatelessWidget {
  const CustomButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              side: BorderSide(
                color: Colors.blueAccent,
              ),
            ),
          ),
          child: const Text(
            "Button 1",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

// ============================== CustomButton2 ==============================

// child: CustomButton2()

class CustomButton2 extends StatelessWidget {
  const CustomButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              side: BorderSide(
                color: Colors.blueAccent,
              ),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(width: 5),
              Text(
                "Button 2",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================== CustomButton3 ==============================

// child: CustomButton3()

class CustomButton3 extends StatelessWidget {
  const CustomButton3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            // backgroundColor: Colors.blue,
            side: const BorderSide(
              color: Colors.blue,
            ),
            foregroundColor: Colors.green,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          child: const Text(
            "Button 3",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

// ============================== CustomButton4 ==============================

// child: CustomButton4()

class CustomButton4 extends StatelessWidget {
  const CustomButton4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            // backgroundColor: Colors.blue,
            side: const BorderSide(
              color: Colors.blue,
            ),
            foregroundColor: Colors.green,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.blue,
                size: 20,
              ),
              SizedBox(width: 5),
              Text(
                "Button 4",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================== CustomButton5 ==============================

// child: CustomButton5()

class CustomButton5 extends StatelessWidget {
  const CustomButton5({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () {},
        color: Colors.blue,
        icon: const Icon(
          Icons.settings_outlined,
          size: 40,
        ),
      ),
    );
  }
}

// ============================== CustomButton6 ==============================

// child: CustomButton6()

class CustomButton6 extends StatelessWidget {
  const CustomButton6({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () {},
        color: Colors.blue,
        style: IconButton.styleFrom(
          side: const BorderSide(
            color: Colors.blue,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          backgroundColor: Colors.white10,
        ),
        icon: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}

// ============================== CustomButton7 ==============================

// child: CustomButton7()

class CustomButton7 extends StatelessWidget {
  const CustomButton7({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        padding: const EdgeInsets.all(5),
        onPressed: () {},
        color: Colors.blue,
        icon: Image.network(
          "https://static.wixstatic.com/media/eebeaf_5121131bb26e49df860c93835d4661f5~mv2.gif",
          fit: BoxFit.cover,
          height: 60,
          width: 60,
        ),
      ),
    );
  }
}

// ============================== CustomButton8 ==============================

// child: CustomButton8()

class CustomButton8 extends StatefulWidget {
  const CustomButton8({super.key});

  @override
  State<CustomButton8> createState() => _CustomButton8State();
}

class _CustomButton8State extends State<CustomButton8> {
  List<bool> selected_buttons = [
    false,
    false,
    false,
    false,
    false,
  ];
  List<Widget> buttons = [
    const Icon(Icons.add),
    const Text("S"),
    const Text("M"),
    const Text("L"),
    const Icon(
      Icons.remove_circle_outline,
      color: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ToggleButtons(
        isSelected: selected_buttons,
        color: Colors.blue,
        borderColor: Colors.blue,
        hoverColor: Colors.black,
        fillColor: Colors.blueAccent,
        direction: Axis.horizontal,
        verticalDirection: VerticalDirection.down,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        selectedBorderColor: Colors.green,
        selectedColor: Colors.green,
        onPressed: (index) {
          if (index == 4) {
            setState(() {
              selected_buttons = [false, false, false, false, false];
            });
          } else {
            setState(() {
              selected_buttons[index] = !selected_buttons[index];
            });
          }
        },
        children: buttons,
      ),
    );
  }
}

// ============================== CustomButtonGroup1 ==============================

// child: CustomButtonGroup1()

class CustomButtonGroup1 extends StatefulWidget {
  const CustomButtonGroup1({Key? key}) : super(key: key);

  @override
  State<CustomButtonGroup1> createState() => _CustomButtonGroup1State();
}

class _CustomButtonGroup1State extends State<CustomButtonGroup1> {
  List<bool> selectedButtons = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<String> textButtons = [
    "01:00",
    "02:00",
    "03:00",
    "04:00",
    "05:00",
    "06:00",
    "07:00",
    "08:00",
    "09:00",
    "10:00",
  ];

  Color enableColor = Colors.blue;
  Color disableColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: textButtons
              .asMap()
              .entries
              .map(
                (elem) => ElevatedButton(
                  onPressed: () {
                    onPressButton(elem.key);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor:
                        selectedButtons[elem.key] ? enableColor : disableColor,
                    side: const BorderSide(
                      color: Colors.blue,
                    ),
                    foregroundColor: Colors.green,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    elem.value,
                    style: TextStyle(
                      color: selectedButtons[elem.key]
                          ? disableColor
                          : enableColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  void onPressButton(int index) {
    setState(() {
      selectedButtons[index] = !selectedButtons[index];
    });
  }
}

