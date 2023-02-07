import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    super.key,
    required int selectedIndex, required this.selectedImage, required this.unSelectedImage,
  }) : _selectedIndex = selectedIndex;

  final int _selectedIndex;
  final String selectedImage;
  final String unSelectedImage;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _selectedIndex == 0 ? selectedImage : unSelectedImage,
      height: 16.h,
      width: 16.w,
    );
  }
}