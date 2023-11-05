import 'package:flutter/material.dart';
import 'package:home_controller_app/features/home/presentation/views/widgets/home_body.dart';
import 'package:home_controller_app/features/home/presentation/views/widgets/my_icon.dart';
import 'package:home_controller_app/features/home/presentation/views/widgets/tab_style.dart';

class HomeView extends StatelessWidget implements PreferredSizeWidget {
  const HomeView({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    List<Widget> tabsList = [
      const TabStyle(text: 'Devices'),
      const TabStyle(text: 'Bedroom'),
      const TabStyle(text: 'Kitchen'),
      const TabStyle(text: 'Garage'),
    ];
    return DefaultTabController(
      length: tabsList.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leadingWidth: 600,
          leading: const LeadingAppBar(),
          elevation: 0,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            labelColor: const Color(0xff75624a),
            indicatorColor: const Color(0xff75624a),
            tabs: tabsList,
          ),
        ),
        backgroundColor: const Color(0xffe4d9c5),
        body: const TabBarView(
          children: [
            HomeBody(),
            Center(child: Text('Bedroom')),
            Center(child: Text('Kitchen')),
            Center(child: Text('Garage')),
          ],
        ),
      ),
    );
  }
}

class LeadingAppBar extends StatelessWidget {
  const LeadingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 40),
                MyIcon(imagePath: 'assets/images/menu.png'),
              ],
            ),
            Row(
              children: [
                MyIcon(imagePath: 'assets/images/profile2.png'),
                SizedBox(width: 40),
              ],
            )
          ],
        ),
      ],
    );
  }
}
