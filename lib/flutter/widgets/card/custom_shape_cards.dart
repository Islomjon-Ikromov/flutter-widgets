import 'package:flutter/material.dart';

// ============================== CustomShapeCard1 ==============================

//   children: [
//     CustomShapeCard1(),
//   ],
//
//   or
//
//   child: CustomShapeCard1()

class CustomShapeCard1 extends StatelessWidget {
  const CustomShapeCard1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 100,
      child: Card(
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.3),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(5),
        ),
      ),
    );
  }
}

// ============================== CustomShapeCard2 ==============================

//   children: [
//     CustomShapeCard2(),
//   ],
//
//   or
//
//   child: CustomShapeCard2()

class CustomShapeCard2 extends StatelessWidget {
  const CustomShapeCard2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 100,
      child: Card(
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.3),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(5),
        ),
      ),
    );
  }
}

// ============================== CustomShapeCard3 ==============================

//   children: [
//     CustomShapeCard3(),
//   ],
//
//   or
//
//   child: CustomShapeCard3()

class CustomShapeCard3 extends StatelessWidget {
  const CustomShapeCard3({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 100,
      child: Card(
        margin: const EdgeInsets.all(10),
        color: Colors.purple,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.3),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(5),
        ),
      ),
    );
  }
}

// ============================== CustomShapeCard4 ==============================

//   children: [
//     CustomShapeCard4(),
//   ],
//
//   or
//
//   child: CustomShapeCard4()

class CustomShapeCard4 extends StatelessWidget {
  const CustomShapeCard4({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 200,
      child: Card(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          side: BorderSide(
            width: 2,
            color: Colors.blue.withOpacity(0.2),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.network(
                "https://www.birmingham.ac.uk/media-library/header-images/technology-1920.x5ebb8ff3.jpg",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
