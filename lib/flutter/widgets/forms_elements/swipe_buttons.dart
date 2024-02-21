import 'dart:async';

import 'package:flutter/material.dart';

// ============================== CustomSwipeButton1 ==============================

// child: CustomSwipeButton1()

class CustomSwipeButton1 extends StatefulWidget {
  const CustomSwipeButton1({super.key});

  @override
  _CustomSwipeButton1State createState() => _CustomSwipeButton1State();
}

class _CustomSwipeButton1State extends State<CustomSwipeButton1> {
  TextEditingController currentPosition = TextEditingController(text: "0");
  double fixedHeight = 80;
  bool swiping = false;
  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if (swiping == false && double.parse(currentPosition.text) > 5) {
        setState(() {
          currentPosition.text =
              (double.parse(currentPosition.text) - 5).toString();
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: fixedHeight,
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(90),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90)),
                color: Colors.blue,
                child: SizedBox(
                  width: double.parse(currentPosition.text) + fixedHeight - 15,
                  height: fixedHeight,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onHorizontalDragStart: (details) {
                  // print("start => ${details}");
                  setState(() {
                    swiping = true;
                  });
                },
                onHorizontalDragEnd: (details) {
                  // print("finish => ${details}");
                  setState(() {
                    swiping = false;
                  });
                },
                onHorizontalDragUpdate: (details) {
                  // print("update => ${details.globalPosition.dx}");
                  if (details.globalPosition.dx + fixedHeight < size.width) {
                    setState(() {
                      currentPosition.text =
                          details.globalPosition.dx.toString();
                    });
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: double.parse(currentPosition.text),
                    ),
                    Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: const CircleBorder(),
                      margin: EdgeInsets.zero,
                      child: Icon(
                        Icons.arrow_circle_right_outlined,
                        size: fixedHeight - 10,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================== CustomSwipeButton2 ==============================

// child: CustomSwipeButton2()

class CustomSwipeButton2 extends StatefulWidget {
  const CustomSwipeButton2({super.key});

  @override
  _CustomSwipeButton2State createState() => _CustomSwipeButton2State();
}

class _CustomSwipeButton2State extends State<CustomSwipeButton2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  TextEditingController currentPosition = TextEditingController(text: "0");
  double fixedHeight = 60;
  double beginPosition = 0;
  double endPosition = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.green,
    ).animate(_controller);

    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: fixedHeight,
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: GestureDetector(
          onHorizontalDragStart: (details) {
            setState(() {
              beginPosition = details.globalPosition.dx;
            });
          },
          onHorizontalDragUpdate: (details) {
            setState(() {
              endPosition = details.globalPosition.dx;
            });
          },
          onHorizontalDragEnd: (details) {
            if ((endPosition - beginPosition) > 300) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('IT SWIPED'),
                  duration: Duration(seconds: 1),
                ),
              );
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _colorAnimation,
                builder: (context, child) {
                  return Expanded(
                    child: Text(
                      'SWIPE IT >>>',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: _colorAnimation.value,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
