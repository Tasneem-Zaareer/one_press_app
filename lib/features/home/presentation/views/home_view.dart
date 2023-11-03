import 'package:flutter/material.dart';
import 'package:home_controller_app/features/home/data/device_model.dart';
import 'package:home_controller_app/features/home/presentation/views/widgets/device_box.dart';
import 'package:home_controller_app/features/home/presentation/views/widgets/my_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<DeviceModel> devicesList = [
      DeviceModel(
        imagePath: 'assets/images/lamp.png',
        deviceName: 'Lamp',
        devicePowerOn: false,
      ),
      DeviceModel(
        imagePath: 'assets/images/tv.png',
        deviceName: 'Smart TV',
        devicePowerOn: false,
      ),
      DeviceModel(
        imagePath: 'assets/images/air-conditioner.png',
        deviceName: 'Air Condition',
        devicePowerOn: false,
      ),
      DeviceModel(
        imagePath: 'assets/images/washing-machine.png',
        deviceName: 'Washing Machine',
        devicePowerOn: false,
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffe4d9c5),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyIcon(imagePath: 'assets/images/menu.png'),
                  MyIcon(imagePath: 'assets/images/profile2.png'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  Text('Home Devices'),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) => DeviceBox(
                  device: devicesList[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
