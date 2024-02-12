import 'package:flutter/material.dart';

// ============================== CustomBottomNavigationBar1 ==============================

// bottomNavigationBar: CustomBottomNavigationBar1()

class CustomBottomNavigationBar1 extends StatelessWidget {
  const CustomBottomNavigationBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_rounded,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          label: "Saved",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: "Settings",
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 1,
      currentIndex: 0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 10,
      ),
      selectedIconTheme: const IconThemeData(
        color: Colors.blue,
        size: 28,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.grey,
        size: 20,
      ),
      type: BottomNavigationBarType.fixed,
      onTap: (index) {},
    );
  }
}

// ============================== CustomBottomNavigationBar2 ==============================

// bottomNavigationBar: const CustomBottomNavigationBar2(),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// floatingActionButton: FloatingActionButton(
//   backgroundColor: Colors.white,
//   // mini: true,
//   shape: const CircleBorder(),
//   onPressed: () {},
//   child: const Icon(Icons.add),
// ),

class CustomBottomNavigationBar2 extends StatelessWidget {
  const CustomBottomNavigationBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_rounded,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          label: "Saved",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: "Settings",
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 1,
      currentIndex: 0,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 10,
      ),
      selectedIconTheme: const IconThemeData(
        color: Colors.blue,
        size: 28,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.grey,
        size: 20,
      ),
      type: BottomNavigationBarType.fixed,
      onTap: (index) {},
    );
  }
}

// ============================== CustomBottomNavigationBar3 ==============================

// Stack(
//   children: [
//     other_widgets
//     const Align(
//       alignment: Alignment.bottomCenter,
//       child: CustomBottomNavigationBar3(),
//     ),
//   ],
// ),

class CustomBottomNavigationBar3 extends StatelessWidget {
  const CustomBottomNavigationBar3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
        left: 10,
        right: 10,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              size: 30,
              color: Colors.green,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
              color: Colors.white54,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.card_giftcard,
              size: 30,
              color: Colors.white54,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              size: 30,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}

// ============================== CustomBottomNavigationBar4 ==============================

// Stack(
//   children: [
//     other_widgets
//     const Align(
//       alignment: Alignment.bottomCenter,
//       child: CustomBottomNavigationBar3(),
//     ),
//   ],
// ),

class CustomBottomNavigationBar4 extends StatefulWidget {
  const CustomBottomNavigationBar4({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar4> createState() =>
      _CustomBottomNavigationBar4State();
}

class _CustomBottomNavigationBar4State
    extends State<CustomBottomNavigationBar4> {
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
