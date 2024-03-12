import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widgets/flutter/widgets/appbar/custom_appbars.dart';
import 'package:flutter_widgets/flutter/widgets/appbar/sliver_appbars.dart';
import 'package:flutter_widgets/flutter/widgets/bottom_navigation_bar/custom_animated_bottom_navigation_bars.dart';
import 'package:flutter_widgets/flutter/widgets/bottom_navigation_bar/custom_bottom_navigation_bars.dart';
import 'package:flutter_widgets/flutter/widgets/card/custom_ads_cards.dart';
import 'package:flutter_widgets/flutter/widgets/card/custom_animated_cards.dart';
import 'package:flutter_widgets/flutter/widgets/card/custom_item_cards.dart';
import 'package:flutter_widgets/flutter/widgets/card/custom_shape_cards.dart';
import 'package:flutter_widgets/flutter/widgets/drawer/custom_drawers.dart';
import 'package:flutter_widgets/flutter/widgets/forms_elements/animated_floating_action_buttons.dart';
import 'package:flutter_widgets/flutter/widgets/forms_elements/buttons.dart';
import 'package:flutter_widgets/flutter/widgets/forms_elements/swipe_buttons.dart';
import 'package:flutter_widgets/flutter/widgets/forms_elements/switches.dart';
import 'package:flutter_widgets/flutter/widgets/indicators/custom_circular_indicator.dart';
import 'package:flutter_widgets/flutter/widgets/indicators/custom_liner_indicator.dart';
import 'package:flutter_widgets/flutter/widgets/tabbar/custom_tabbars.dart';

import 'flutter/widgets/forms_elements/text_fields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar1(),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     SizedBox(
      //       width: double.infinity,
      //     ),
      //     CustomAnimatedText1(),
      //     CustomAnimatedText2(),
      //     CustomAnimatedText3(),
      //     CustomAnimatedText4(),
      //     CustomAnimatedText5(),
      //   ],
      // ),
      // ListView(
      //   children: [
      //     CustomAnimatedCard1(),
      //
      //   ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCircularIndicator(),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: CustomLinearIndicator(),
              ),
            ],
          )
        ],
      ),
      // bottomNavigationBar: CustomAnimatedBottomNavigationBar3(),
      // floatingActionButton: AnimatedFloatingActionButton(),
    );
  }
}
