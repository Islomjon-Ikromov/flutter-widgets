import 'dart:math';

import 'package:flutter/material.dart';

// ============================== CustomAnimatedCard1 ==============================

//   children: [
//     CustomAnimatedCard1(),
//   ],
//
//   or
//
//   child: CustomAnimatedCard1()

class CustomAnimatedCard1 extends StatefulWidget {
  const CustomAnimatedCard1({super.key});

  @override
  State<CustomAnimatedCard1> createState() => _CustomAnimatedCard1State();
}

class _CustomAnimatedCard1State extends State<CustomAnimatedCard1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double?> _sizeAnimation;

  List<Color> colors_list = [
    Colors.red,
    Colors.pink,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.yellow,
  ];

  Color beginColor = Colors.red;
  Color endColor = Colors.red;

  double beginSize = 100;
  double endSize = 100;

  Random random = Random();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _colorAnimation = ColorTween().animate(_controller);
    _sizeAnimation = Tween<double>(begin: 100, end: 100).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _controller.reset();

                endColor = colors_list[random.nextInt(colors_list.length)];
                endSize = Random().nextDouble() *
                        (size.width * 0.9 - size.width * 0.1) +
                    size.width * 0.1;

                _colorAnimation = ColorTween(
                  begin: beginColor,
                  end: endColor,
                ).animate(_controller);

                _sizeAnimation = Tween<double>(
                  begin: beginSize,
                  end: endSize,
                ).animate(_controller);

                _controller.forward();

                beginColor = endColor;
                beginSize = endSize;
              },
              child: SizedBox(
                width: _sizeAnimation.value,
                height: _sizeAnimation.value,
                child: Card(
                  color: _colorAnimation.value,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

// ============================== CustomAnimatedCard2s ==============================

//   child: CustomAnimatedCard2()

class CustomAnimatedCard2 extends StatefulWidget {
  @override
  _CustomAnimatedCard2State createState() => _CustomAnimatedCard2State();
}

class _CustomAnimatedCard2State extends State<CustomAnimatedCard2>
    with TickerProviderStateMixin {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _items = ['Item 1', 'Item 2', 'Item 3'];
  Random random = Random();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              // print(index);
              return buildItem(_items[index], animation);
            },
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            addItem();
          },
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  Widget buildItem(String item, Animation<double> animation) {
    int r = random.nextInt(4);
    switch (r) {
      case 0:
        return RotationTransition(
          turns: animation,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
          child: Card(
            child: ListTile(
              title: Text(item),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  removeItem(item);
                },
              ),
            ),
          ),
        );
        break;
      case 1:
        return FadeTransition(
          opacity: animation,
          child: Card(
            child: ListTile(
              title: Text(item),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  removeItem(item);
                },
              ),
            ),
          ),
        );
        break;
      case 2:
        return SizeTransition(
          sizeFactor: animation,
          child: Card(
            child: ListTile(
              title: Text(item),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  removeItem(item);
                },
              ),
            ),
          ),
        );
        break;
      case 3:
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: Card(
            child: ListTile(
              title: Text(item),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  removeItem(item);
                },
              ),
            ),
          ),
        );
        break;
      default:
        return Text("data");
    }
  }

  void addItem() {
    _listKey.currentState
        ?.insertItem(_items.length, duration: const Duration(seconds: 1));
    _items.add('Item ${_items.length + 1}');
  }

  void removeItem(String item) {
    int index = _items.indexOf(item);
    if (index != -1) {
      _listKey.currentState?.removeItem(
        index,
        (context, animation) => buildItem(item, animation),
        duration: const Duration(seconds: 1),
      );
      _items.removeAt(index);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
