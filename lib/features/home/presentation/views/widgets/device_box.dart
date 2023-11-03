import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_controller_app/features/home/data/device_model.dart';

class DeviceBox extends StatefulWidget {
  const DeviceBox({super.key, required this.device});

  final DeviceModel device;

  @override
  State<DeviceBox> createState() => _DeviceBoxState();
}

class _DeviceBoxState extends State<DeviceBox> {
  @override
  Widget build(BuildContext context) {
    void powerSwitched() {
      setState(() {
        if (widget.device.devicePowerOn == true) {
          widget.device.devicePowerOn = false;
        } else {
          widget.device.devicePowerOn = true;
        }
      });
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        decoration: BoxDecoration(
           color:  widget.device.devicePowerOn? Color(0xff282622) : Color(0xfffffbf1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                widget.device.imagePath,
                height: 65,
                color: widget.device.devicePowerOn? Colors.white : Color(0xff282622),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(widget.device.deviceName,style: TextStyle(
                        color: widget.device.devicePowerOn ? Colors.white : Color(0xff282622)
                      ),),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 2,
                    child: CupertinoSwitch(
                      value: widget.device.devicePowerOn,
                      onChanged: (value) {
                        powerSwitched();
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
