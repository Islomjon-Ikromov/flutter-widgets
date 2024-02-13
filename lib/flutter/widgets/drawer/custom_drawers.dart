import 'package:flutter/material.dart';

// ============================== CustomDrawer1 ==============================

// drawer: CustomDrawer1()

class CustomDrawer1 extends Drawer {
  BuildContext drawerContext;

  CustomDrawer1({super.key, required this.drawerContext})
      : super(
          // width: 300,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
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

// ============================== CustomDrawer2 ==============================

// drawer: CustomDrawer2()

class CustomDrawer2 extends Drawer {
  BuildContext drawerContext;

  CustomDrawer2({super.key, required this.drawerContext})
      : super(
          // width: 300,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Material(
                color: Colors.blueAccent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(drawerContext).padding.top,
                      bottom: 24,
                    ),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 52,
                          backgroundImage: NetworkImage(
                            'https://ikramov.uz/assets/img/avatar1.jpg',
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Islomjon Ikromov',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                        Text(
                          'ikramov.uz',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Home'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.favorite_border),
                    title: const Text('Favourites'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.workspaces),
                    title: const Text('Workflow'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.update),
                    title: const Text('Updates'),
                    onTap: () {},
                  ),
                  const Divider(
                    color: Colors.black45,
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_tree_outlined),
                    title: const Text('Plugins'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications_outlined),
                    title: const Text('Notifications'),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        );
}
