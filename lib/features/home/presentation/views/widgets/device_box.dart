import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:home_controller_app/features/home/data/device_model.dart';

import '../device_view.dart';

class DeviceBox extends StatefulWidget {
  const DeviceBox({super.key, required this.device});

  final DeviceModel device;

  @override
  State<DeviceBox> createState() => _DeviceBoxState();
}

class _DeviceBoxState extends State<DeviceBox> {
  @override
  Widget build(BuildContext context) {
    void powerSwitched(){
        setState(() {
          widget.device.devicePowerOn =! widget.device.devicePowerOn;
        });
    }
    return GestureDetector(
      onTap: (){Get.to(()=> const DeviceView());},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Container(
          decoration: BoxDecoration(
            color: widget.device.devicePowerOn
                ? const Color(0xff282622)
                : const Color(0xfffffbf1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.device.imagePath,
                  height: 65,
                  color: widget.device.devicePowerOn
                      ? Colors.white
                      : const Color(0xff413e34),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          widget.device.deviceName,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: widget.device.devicePowerOn
                                ? Colors.white
                                : const Color(0xff282622),
                          ),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: pi / 2,
                      child: CupertinoSwitch(
                        thumbColor: widget.device.devicePowerOn
                            ? const Color(0xfff7db4c)
                            : const Color(0xfffffbf1),
                        activeColor: const Color(0xff645d48),
                        trackColor: const Color(0xffd5d1b9),
                        value: widget.device.devicePowerOn,
                        onChanged: (value) {
                          powerSwitched();
                          //powerSwitched();
                        },
                      ),
                    ),

                  ],
                ),
                //Text('3 rooms - 8 devices'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
