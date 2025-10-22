import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petfinderapp/core/app_theme.dart';

class CustomElevationButton extends StatelessWidget {
  final Color? backgroundColor;
  final String label;
  final Widget icon;
  final void Function()? onPressed;

  const CustomElevationButton({
    super.key,
    this.backgroundColor,
    required this.label,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(
        label,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.primaryColor,
        minimumSize: Size(double.infinity, 50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.r)),
        ),
      ),
    );
  }
}
