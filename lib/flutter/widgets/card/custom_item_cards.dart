import 'package:flutter/material.dart';

// ============================== CustomItemCard1 ==============================
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 0.75,
//             ),
//
//   child: CustomItemCard1()

class CustomItemCard1 extends StatelessWidget {
  const CustomItemCard1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              elevation: 1,
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.zero,
              child: Image.network(
                "https://sc02.alicdn.com/kf/Uadcaebbdcd0e4f0f88ce4d199b39c6dao.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box packages",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 20,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
              child: Text(
                "About the product, you can read from here",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "20\$",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    label: Text(
                      "Buy",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================== CustomItemCard2 ==============================
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 0.75,
//             ),
//
//   child: CustomItemCard2()

class CustomItemCard2 extends StatelessWidget {
  const CustomItemCard2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Card(
                    color: Colors.white,
                    elevation: 1,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.zero,
                    child: Image.network(
                      "https://sc02.alicdn.com/kf/Uadcaebbdcd0e4f0f88ce4d199b39c6dao.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box packages",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
            //   child: Text(
            //     "About the product, you can read from here",
            //     style: TextStyle(
            //       color: Colors.blue,
            //       fontSize: 12,
            //       fontWeight: FontWeight.normal,
            //     ),
            //     textAlign: TextAlign.justify,
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.only(
                left: 5,
                right: 5,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "120 000 so'm",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    label: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.green,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
