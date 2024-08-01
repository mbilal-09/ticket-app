import 'package:flutter/material.dart';

class Constants {}

class AppImages {
  static const String _imagePath = 'assets/images';

  static const String logo = '$_imagePath/logo.png';
  static const String hotel = '$_imagePath/hotel_room.png';
  static const String hotel1 = '$_imagePath/hotel_room_1.png';
  static const String cityView = '$_imagePath/city_view.png';
  static const String poolView = '$_imagePath/pool_view.png';
}

class AppColors {
  static const Color primaryColor = Colors.blueAccent;
  static Color primaryColorLight = Colors.blueAccent.withOpacity(0.5);
  static const Color textColor = Color.fromARGB(255, 180, 180, 180);
  static const Color bgColor = Color(0xFF1E1E1E);
  static const Color lightBgColor = Color(0xFF3C3C3C);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color transparent = Colors.transparent;
}
