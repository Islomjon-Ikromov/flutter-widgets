import 'package:flutter/material.dart';

class MyCustomAppBar1 extends StatelessWidget {
  const MyCustomAppBar1({
    Key? key,
    required this.title,
    this.backgroundColor,
    required this.onSearchPressed,
    required this.onDriverPressed,
    required this.height,
  }) : super(key: key);

  final Color? backgroundColor;
  final double height;
  final String title;
  final VoidCallback onDriverPressed;
  final VoidCallback onSearchPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.blue,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: onDriverPressed,
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
                onPressed: onSearchPressed,
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
