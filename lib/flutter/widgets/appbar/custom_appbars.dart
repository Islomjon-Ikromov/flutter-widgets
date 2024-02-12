import 'package:flutter/material.dart';

// ============================== MyCustomAppBar1 ==============================

// appBar: MyCustomAppBar1()

class MyCustomAppBar1 extends StatelessWidget implements PreferredSize {
  const MyCustomAppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      leading: Padding(
        padding: const EdgeInsets.all(4.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Scaffold.of(context).openDrawer();
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

// ============================== MyCustomAppBar2 ==============================

// Stack(
//   children: [
//     Align(
//       alignment: Alignment.topCenter,
//       child: MyCustomAppBar2(),
//     ),
//   ],
// )

class MyCustomAppBar2 extends StatelessWidget {
  const MyCustomAppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
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
                onPressed: () {},
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
