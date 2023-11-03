import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:home_controller_app/features/home/data/device_model.dart';

class DeviceBox extends StatelessWidget {
  const DeviceBox({super.key, required this.device});

  final DeviceModel device;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xfffffbf1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                device.imagePath,
                height: 65,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(device.deviceName),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 2,
                    child: CupertinoSwitch(
                      value: false,
                      onChanged: (value) {

                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
