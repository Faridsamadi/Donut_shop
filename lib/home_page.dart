import 'package:doughnut_shop/pancake_tab.dart';
import 'package:doughnut_shop/pizza_tab.dart';
import 'package:doughnut_shop/smoothie_tab.dart';
import 'package:doughnut_shop/tab_control.dart';
import 'package:flutter/material.dart';

import 'burger_tab.dart';
import 'donut_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //my tabs list
  List<Widget> myTabs = const [
    MyTab(
      iconPath: "assets/icons/donut.png",
    ),
    MyTab(
      iconPath: "assets/icons/pancakes.png",
    ),
    MyTab(
      iconPath: "assets/icons/smoothie.png",
    ),
    MyTab(
      iconPath: "assets/icons/burger.png",
    ),
    MyTab(
      iconPath: "assets/icons/pizza.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 36,
                color: Colors.grey[800],
              ),
              onPressed: () {
                //open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 36,
                  color: Colors.grey[800],
                ),
                onPressed: () {
                  //open profile
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //i want to eat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    " EAT",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            //tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  PancakeTab(),
                  SmoothieTab(),
                  BurgerTab(),
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
