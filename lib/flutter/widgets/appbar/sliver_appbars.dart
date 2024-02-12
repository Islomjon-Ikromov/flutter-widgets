import 'package:flutter/material.dart';

// wrap with CustomScrollView in slivers

// after appbar put

// SliverToBoxAdapter(
//   child: Container(
//     margin: const EdgeInsets.all(20),
//     decoration: const BoxDecoration(
//       color: Colors.blue,
//       borderRadius: BorderRadius.all(
//         Radius.circular(30),
//       ),
//     ),
//     height: 400,
//   ),
// ),

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // flexibleSpace: Image.network("https://w.forfun.com/fetch/64/648ceff8c4e804efda307e71a08208b9.jpeg"),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
      // title: const Text(
      //   "T I T L E",
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontWeight: FontWeight.w600,
      //   ),
      // ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
      expandedHeight: 300,

      backgroundColor: Colors.blue,
      elevation: 1,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.green,
        ),
        title: const Text(
          "T I T L E",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        // background: Image.network(
        //   "https://w.forfun.com/fetch/64/648ceff8c4e804efda307e71a08208b9.jpeg",
        // ),
      ),
      pinned: true,
      floating: false,
      snap: false,
    );
  }
}
