import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getxapp/View%20Screen/graphql_screen.dart';
import 'package:getxapp/View%20Screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 1;

  List<Widget> pages = [
    const HomeScreen(),
    const GraphQLScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          selectedItemColor: Color.fromARGB(255, 109, 82, 158),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Color.fromARGB(255, 205, 204, 238),
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          // landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                height: 26.06,
                color: _currentIndex == 0
                    ? Color.fromARGB(255, 109, 82, 158)
                    : Color.fromARGB(255, 239, 237, 244),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset(
                "assets/icons/compass.svg",
                height: 26.06,
                color: _currentIndex == 1
                    ? Color.fromARGB(255, 109, 82, 158)
                    : Color.fromARGB(255, 239, 237, 244),
              ),
            ),
          ]),
      body: pages[_currentIndex],
    );
  }
}
