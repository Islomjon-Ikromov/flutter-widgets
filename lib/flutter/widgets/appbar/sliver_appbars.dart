import 'package:flutter/material.dart';

// ============================== CustomSliverAppBar1 ==============================

// CustomScrollView(
//   slivers: [
//     const CustomSliverAppBar1(),
//     SliverToBoxAdapter(
//       child: Container(
//         margin: const EdgeInsets.all(20),
//         decoration: const BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.all(
//             Radius.circular(30),
//           ),
//         ),
//         height: 400,
//       ),
//     ),
//     SliverToBoxAdapter(
//       child: Container(
//         margin: const EdgeInsets.all(20),
//         decoration: const BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.all(
//             Radius.circular(30),
//           ),
//         ),
//         height: 400,
//       ),
//     ),
//   ],
// ),

class CustomSliverAppBar1 extends StatelessWidget {
  const CustomSliverAppBar1({super.key});

  @override
  Widget build(BuildContext sliverAppBarContext) {
    return SliverAppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
      title: const Text(
        "T I T L E",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            Scaffold.of(sliverAppBarContext).openDrawer();
          },
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
      expandedHeight: 300,
      collapsedHeight: 60,
      backgroundColor: Colors.blue,
      elevation: 1,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.green,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sliver AppBar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
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
      ),
      pinned: true,
      floating: false,
      snap: false,
    );
  }
}

// ============================== CustomSliverAppBar2 ==============================

// CustomScrollView(
//   slivers: [
//     const CustomSliverAppBar2(),
//     SliverToBoxAdapter(
//       child: Container(
//         margin: const EdgeInsets.all(20),
//         decoration: const BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.all(
//             Radius.circular(30),
//           ),
//         ),
//         height: 400,
//       ),
//     ),
//     SliverToBoxAdapter(
//       child: Container(
//         margin: const EdgeInsets.all(20),
//         decoration: const BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.all(
//             Radius.circular(30),
//           ),
//         ),
//         height: 400,
//       ),
//     ),
//   ],
// ),

class MySliverAppBar2 extends StatelessWidget {
  const MySliverAppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
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
      collapsedHeight: 60,
      backgroundColor: Colors.blue,
      elevation: 1,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 10,
        background: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/black-ponds-sunset-darren-white.jpg",
                    ),
                  ),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sliver AppBar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            )
          ],
        ),
        centerTitle: true,
        // title: Text('dsd'),
      ),
      pinned: true,
      floating: false,
      snap: false,
    );
  }
}
