import 'package:flutter/material.dart';

import '../../../home/presentation/views/home_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pages = [
    const HomeView(),
    const Center(
      child: Text('hi'),
    ),
    const Center(
      child: Text('hello'),
    ),
  ];

  int selectedPageIndex = 0;

  void selectedPage(index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // height: 75,
        // decoration: const BoxDecoration(
        //   color: Color(0xff524e44),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20),
          // ),
          //),

         child: BottomNavigationBar(
          currentIndex: selectedPageIndex,
          onTap: selectedPage,
          selectedItemColor: const Color(0xff504b34),
          unselectedItemColor: const Color(0xffb4ad9c),
          showUnselectedLabels: false,
          backgroundColor: const Color(0xffe4d9c5),
          // backgroundColor: Colors.transparent,
          elevation: 0,
          // selectedFontSize: 16,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_cozy_outlined),
              label: 'Rooms',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
      body: pages[selectedPageIndex],
    );
  }
}
