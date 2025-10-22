import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petfinderapp/core/app_theme.dart';

class SearchTextFiel extends StatelessWidget {
  const SearchTextFiel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 247, 243, 243),
              filled: true,
              hintText: 'Search',
              suffixStyle: TextStyle(fontSize: 14.sp),
              hintStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppTheme.textColor,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.all(14.0.r),
                child: SvgPicture.asset(
                  'assets/svg/search-normal.svg',
                  colorFilter: ColorFilter.mode(
                    Color(0xFF222222),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(14.0.r),
                child: SvgPicture.asset(
                  'assets/svg/setting-5.svg',
                  colorFilter: ColorFilter.mode(
                    Color(0xFF222222),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
