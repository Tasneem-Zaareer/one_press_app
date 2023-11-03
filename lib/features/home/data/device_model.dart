class DeviceModel {
  final String imagePath;
  final String deviceName;
  late bool devicePowerOn;

  DeviceModel({
    required this.imagePath,
    required this.deviceName,
    required this.devicePowerOn,
  });
}
