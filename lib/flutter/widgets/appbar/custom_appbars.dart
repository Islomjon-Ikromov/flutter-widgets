import 'package:flutter/material.dart';

// ============================== MyCustomAppBar1 ==============================

// appBar: CustomAppBar1()

class CustomAppBar1 extends StatelessWidget implements PreferredSize {
  const CustomAppBar1({super.key});

  @override
  Widget build(BuildContext appBarContext) {
    return AppBar(
      backgroundColor: Colors.blue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(4.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Scaffold.of(appBarContext).openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      title: const Text(
        "T I T L E",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => const Text("");

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

// ============================== CustomAppBar2 ==============================

// Stack(
//   children: [
//     Align(
//       alignment: Alignment.topCenter,
//       child: CustomAppBar2(),
//     ),
//   ],
// )

class CustomAppBar2 extends StatelessWidget {
  const CustomAppBar2({super.key});

  @override
  Widget build(BuildContext appBarContext) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
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
                onPressed: () {
                  Scaffold.of(appBarContext).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            const Text(
              "T I T L E",
              style: TextStyle(
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
                onPressed: () {},
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

// ============================== MyCustomAppBar3 ==============================

// appBar: CustomAppBar3(),
// drawer: null

class CustomAppBar3 extends StatelessWidget implements PreferredSize {
  const CustomAppBar3({super.key});

  @override
  Widget build(BuildContext appBarContext) {
    return AppBar(
      backgroundColor: Colors.blue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      title: const Text(
        "T I T L E",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => const Text("");

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
