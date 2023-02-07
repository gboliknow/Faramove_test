import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    super.key,
    
    required this.selectedImage,
    required this.unSelectedImage, required this.isSelected,
  }) ;


  final String selectedImage;
  final String unSelectedImage;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
     isSelected? selectedImage : unSelectedImage,
      height: 16.h,
      width: 16.w,
    );
  }
}
