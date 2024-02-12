// ============================== CustomBottomNavigationBar4 ==============================

// Stack(
//   children: [
//     other_widgets
//     const Align(
//       alignment: Alignment.bottomCenter,
//       child: CustomAnimatedBottomNavigationBar1(),
//     ),
//   ],
// ),

import 'package:flutter/material.dart';

class CustomAnimatedBottomNavigationBar1 extends StatefulWidget {
  const CustomAnimatedBottomNavigationBar1({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedBottomNavigationBar1> createState() =>
      _CustomAnimatedBottomNavigationBar1State();
}

class _CustomAnimatedBottomNavigationBar1State
    extends State<CustomAnimatedBottomNavigationBar1> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // decoration: const BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(50),
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildNavItem(1, Icons.home, "Home"),
          buildNavItem(2, Icons.search, "Search"),
          buildNavItem(3, Icons.settings, "Settings"),
        ],
      ),
    );
  }

  Widget buildNavItem(int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: const Duration(milliseconds: 500),
        width: currentIndex == index ? 130 : 80,
        height: 50,
        decoration: BoxDecoration(
          color: currentIndex == index ? Colors.blue : Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.only(
          right: 20,
          left: 10,
          top: 8,
          bottom: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
              color: currentIndex == index ? Colors.white : Colors.black26,
            ),
            const SizedBox(width: 5),
            currentIndex == index
                ? Flexible(
                    child: Text(
                      label,
                      style: TextStyle(
                        color: currentIndex == index
                            ? Colors.white
                            : Colors.black26,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                : const Text(""),
          ],
        ),
      ),
    );
  }
}
