import 'package:flutter/material.dart';

// ============================== CustomDrawer1 ==============================

// drawer: CustomDrawer1()

class CustomDrawer1 extends StatelessWidget {
  const CustomDrawer1({super.key});

  @override
  Widget build(BuildContext drawerContext) {
    return Drawer(
      // width: 300,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  "https://outsider.ie/wp-content/uploads/2022/02/Outsider.ie-Dolomites.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Text(
              'Your Profile',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.of(drawerContext).pop();
            },
          ),
        ],
      ),
    );
  }
}
