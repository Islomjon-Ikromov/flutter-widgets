import 'package:flutter/material.dart';

class AnimatedFloatingActionButton extends StatefulWidget {
  const AnimatedFloatingActionButton({super.key});

  @override
  State<AnimatedFloatingActionButton> createState() =>
      _AnimatedFloatingActionButtonState();
}

class _AnimatedFloatingActionButtonState
    extends State<AnimatedFloatingActionButton> with TickerProviderStateMixin {
  bool menuOpened = false;
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _menuAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _menuAnimation = Tween<double>(begin: 1, end: 0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleIcon() {
    if (menuOpened) {
      _controller.reverse();
    } else {
      _controller.forward();
    }

    setState(() {
      menuOpened = !menuOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: Colors.white,
                shape: CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              _toggleIcon();
            },
            backgroundColor: Colors.white,
            shape: const CircleBorder(),
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _animation,
            ),
          ),
        ),
      ],
    );
  }
}
