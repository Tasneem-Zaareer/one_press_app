import 'package:flutter/material.dart';
import '../../../data/device_model.dart';
import 'device_box.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key,});

  @override
  Widget build(BuildContext context) {
    List<DeviceModel> devicesList = [
      DeviceModel(
        imagePath: 'assets/images/washing-machine.png',
        deviceName: 'Washing Machine',
        devicePowerOn: false,
      ),
      DeviceModel(
        imagePath: 'assets/images/floor-lamp.png',
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

    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 40.0),
        //   child: Column(
        //     children: [
        //       Text('Home Devices'),
        //     ],
        //   ),
        // ),
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
    );
  }
}
