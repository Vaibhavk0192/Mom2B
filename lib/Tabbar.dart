import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:mom2b/Home.dart';
import 'package:mom2b/count.dart';
import 'package:mom2b/profile.dart';
import 'package:mom2b/search.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            // color: Colors.pink,
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
          )),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.pinkAccent,
              currentIndex: _selectedTab,
              onTap: (index) {
                setState(() {
                  this._selectedTab = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_rounded),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Typicons.stopwatch),
                  label: "Count",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Entypo.database),
                  label: "Data",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper),
                  label: "Profile",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            renderView(0, HomePage()),
            renderView(1, SearchPage()),
            renderView(2, Count()),
            renderView(3, ProfilePage()),
            renderView(4, ProfilePage()),
          ],
        ),
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
