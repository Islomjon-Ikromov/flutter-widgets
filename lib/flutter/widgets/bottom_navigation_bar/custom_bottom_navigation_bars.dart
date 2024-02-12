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
