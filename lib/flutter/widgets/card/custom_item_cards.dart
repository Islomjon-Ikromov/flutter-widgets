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
                    icon: const Icon(
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

class CustomItemCard3 extends StatelessWidget {
  const CustomItemCard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 5,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.network(
                  "https://media.baamboozle.com/uploads/images/122839/1635218463_511509.jpeg",
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/originals/f6/db/eb/f6dbeb17951cb9d12c450eb26e42e484.jpg",
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "Yangi mahsulotlar olishga ulgurib qoling",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "Joriy oyning oxiriga qadar chegirmalar asosida mahsulotlarni sotib olishga ulgurib qoling aks holda vaqt tugaydi",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.black54,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
            child: Text(
              "12.12.2030",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.black26,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
