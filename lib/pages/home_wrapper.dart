import 'package:bv_neufinsing/pages/calendar_page.dart';
import 'package:bv_neufinsing/pages/drinks_page.dart';
import 'package:bv_neufinsing/pages/home_page.dart';
import 'package:bv_neufinsing/pages/profile_page.dart';
import 'package:bv_neufinsing/pages/ranking_page.dart';
import 'package:flutter/material.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({Key? key}) : super(key: key);

  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int _selectedIndex = 0;
  final screens = [
    const HomePage(),
    const RankingPage(),
    const DrinksPage(),
    const CalendarPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromRGBO(17, 50, 77, 1.0),
          child: SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBottomBar(
                    text: "Home",
                    icon: Icons.home_rounded,
                    selected: _selectedIndex == 0,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    }),
                  IconBottomBar(
                    text: "Ranking",
                    icon: Icons.table_chart,
                    selected: _selectedIndex == 1,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    }),
                  IconBottomBar(
                    text: "Add",
                    icon: Icons.add,
                    selected: _selectedIndex == 2,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    }),
                  IconBottomBar(
                    text: "Calendar",
                    icon: Icons.calendar_today,
                    selected: _selectedIndex == 3,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    }),
                  IconBottomBar(
                  text: "Profile",
                  icon: Icons.person,
                  selected: _selectedIndex == 4,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                  })
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}


class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
        required this.text,
        required this.icon,
        required this.selected,
        required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.grey.withOpacity(.75),
          ),
        ),
      ],
    );
  }
}

