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
      height: 70,
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

// bottomNavigationBar: const CustomBottomNavigationBar4(),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// floatingActionButton: FloatingActionButton(
//   backgroundColor: Colors.white,
//   shape: const CircleBorder(),
//   onPressed: () {},
//   child: const Icon(Icons.add),
// ),

class CustomBottomNavigationBar4 extends StatelessWidget {
  const CustomBottomNavigationBar4({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      color: Colors.cyan.shade400,
      notchMargin: 5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black38,
              size: 30,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(
              Icons.print,
              color: Colors.black38,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.people,
              color: Colors.black38,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
