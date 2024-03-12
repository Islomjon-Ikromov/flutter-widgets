// ============================== CustomAnimatedText1 ==============================

// body: CustomAnimatedText1(),

import 'package:flutter/material.dart';

class CustomAnimatedText1 extends StatefulWidget {
  const CustomAnimatedText1({super.key});

  @override
  State<CustomAnimatedText1> createState() => _CustomAnimatedText1State();
}

class _CustomAnimatedText1State extends State<CustomAnimatedText1>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: const Text(
            'Your Animated Text',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }
}

// ============================== CustomAnimatedText2 ==============================

// body: CustomAnimatedText2(),

class CustomAnimatedText2 extends StatefulWidget {
  const CustomAnimatedText2({super.key});

  @override
  State<CustomAnimatedText2> createState() => _CustomAnimatedText2State();
}

class _CustomAnimatedText2State extends State<CustomAnimatedText2>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _slideAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    CurvedAnimation curve =
        CurvedAnimation(parent: _controller, curve: Curves.easeInToLinear);

    _slideAnimation = Tween<double>(begin: -1.0, end: 1.0).animate(curve);
    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation.drive(
        Tween<Offset>(
          begin: const Offset(-1, 0),
          end: Offset.zero,
        ),
      ),
      child: const Text(
        'SlideTransition Text',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}

// ============================== CustomAnimatedText3 ==============================

// body: CustomAnimatedText3(),

class CustomAnimatedText3 extends StatefulWidget {
  const CustomAnimatedText3({super.key});

  @override
  State<CustomAnimatedText3> createState() => _CustomAnimatedText3State();
}

class _CustomAnimatedText3State extends State<CustomAnimatedText3>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    CurvedAnimation curve =
        CurvedAnimation(parent: _controller, curve: Curves.easeInCirc);

    _fadeAnimation = Tween<double>(begin: -1.0, end: 1.0).animate(curve);
    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: const Text(
        'FadeTransition Text',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}

// ============================== CustomAnimatedText4 ==============================

// body: CustomAnimatedText4(),

class CustomAnimatedText4 extends StatefulWidget {
  const CustomAnimatedText4({super.key});

  @override
  State<CustomAnimatedText4> createState() => _CustomAnimatedText4State();
}

class _CustomAnimatedText4State extends State<CustomAnimatedText4>
    with TickerProviderStateMixin {
  String myText = "It is text and it can animate";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  buildAnimatedText() {
    List<Widget> textList = [];

    for (var i = 0; i < myText.length; i++) {
      var controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: (i + 1) * 200),
      );

      CurvedAnimation curve =
          CurvedAnimation(parent: controller, curve: Curves.bounceInOut);

      var fadeAnimation = Tween<double>(begin: -1.0, end: 1.0).animate(curve);

      textList.add(
        FadeTransition(
          opacity: fadeAnimation,
          child: Text(
            myText[i],
            style: const TextStyle(fontSize: 20.0),
          ),
        ),
      );
      controller.forward();
    }

    return textList;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buildAnimatedText(),
    );
  }
}

// ============================== CustomAnimatedText5 ==============================

// body: CustomAnimatedText5(),

class CustomAnimatedText5 extends StatefulWidget {
  const CustomAnimatedText5({super.key});

  @override
  State<CustomAnimatedText5> createState() => _CustomAnimatedText5State();
}

class _CustomAnimatedText5State extends State<CustomAnimatedText5>
    with TickerProviderStateMixin {
  String myText = "It is text and it can animate";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  buildAnimatedText() {
    List<Widget> textList = [];

    for (var i = 0; i < myText.length; i++) {
      var controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: (i + 1) * 200),
      );

      CurvedAnimation curve =
          CurvedAnimation(parent: controller, curve: Curves.easeInToLinear);

      var slideAnimation = Tween<double>(begin: -1.0, end: 1.0).animate(curve);
      var fadeAnimation = Tween<double>(begin: -1.0, end: 1.0).animate(curve);

      textList.add(
        SlideTransition(
          position: slideAnimation.drive(
            Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ),
          ),
          child: FadeTransition(
            opacity: fadeAnimation,
            child: Text(
              myText[i],
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      );

      controller.forward();
    }

    return textList;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buildAnimatedText(),
    );
  }
}
