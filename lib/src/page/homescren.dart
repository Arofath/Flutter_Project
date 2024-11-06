import 'package:flutter/material.dart';

import '../widget/BottomBar.dart';
import '../widget/items_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align content to the left
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 23),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Hot & Fast Food",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left, // Align text to the left
                  ),
                ),
                const SizedBox(height: 4),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Delivers on Time",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.left, // Align text to the left
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                const TabBar(
                  isScrollable: true,
                  labelColor: Colors.white70,
                  indicator: BoxDecoration(),
                  labelStyle: TextStyle(
                    fontSize: 18,
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 18),
                  tabs: [
                    Tab(text: "Burger"),
                    Tab(text: "Pizza"),
                    Tab(text: "Cheese"),
                    Tab(text: "Pasta"),
                  ],
                ),
                const Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeBottomNavigationBar(),
      ),
    );
  }
}
