import 'package:flutter/material.dart';

// ============================== CustomTabBar1 ==============================

// body: CustomTabBar1(),

class CustomTabBar1 extends StatefulWidget {
  const CustomTabBar1({super.key});

  @override
  State<CustomTabBar1> createState() => _CustomTabBar1State();
}

class _CustomTabBar1State extends State<CustomTabBar1>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom TabBar1'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          tabs: const <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("BODY 1"),
          ),
          Center(
            child: Text("BODY 2"),
          ),
          Center(
            child: Text("BODY 3"),
          ),
        ],
      ),
    );
  }
}

// ============================== CustomTabBar2 ==============================

// body: CustomTabBar2(),

class CustomTabBar2 extends StatefulWidget {
  const CustomTabBar2({super.key});

  @override
  State<CustomTabBar2> createState() => _CustomTabBar2State();
}

class _CustomTabBar2State extends State<CustomTabBar2>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom TabBar2'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.tab,
          overlayColor: const MaterialStatePropertyAll<Color>(
            Color(0xFFcaf0f8),
          ),
          labelStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          tabs: const <Widget>[
            Tab(
              child: Text("Home"),
            ),
            Tab(
              child: Text("Search"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("BODY 1"),
          ),
          Center(
            child: Text("BODY 2"),
          ),
        ],
      ),
    );
  }
}

// ============================== CustomTabBar3 ==============================

// body: CustomTabBar3(),

class CustomTabBar3 extends StatefulWidget {
  const CustomTabBar3({super.key});

  @override
  State<CustomTabBar3> createState() => _CustomTabBar3State();
}

class _CustomTabBar3State extends State<CustomTabBar3>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('Custom TabBar3'),
        bottom: TabBar(
          indicatorPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.white,
          dividerColor: Colors.transparent,
          indicator: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            shape: BoxShape.rectangle,
          ),
          labelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          overlayColor: const MaterialStatePropertyAll<Color>(
            Color(0xFFffffff),
          ),
          splashBorderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          tabs: const <Widget>[
            Tab(
              text: "Home",
            ),
            Tab(
              text: "Search",
            ),
            Tab(
              text: "Settings",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("BODY 1"),
          ),
          Center(
            child: Text("BODY 2"),
          ),
          Center(
            child: Text("BODY 3"),
          ),
        ],
      ),
    );
  }
}
