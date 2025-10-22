import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
 final void Function()? onPressed;
  const CustomAppBar({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Find Your Forever Pet',
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.notifications_none_outlined, size: 28),
          ),
        ],
      ),
    );
  }
}
