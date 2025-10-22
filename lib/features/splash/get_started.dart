import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petfinderapp/core/app_theme.dart';
import 'package:petfinderapp/features/botton_nav_bar/presentation/views/bottom_nav_bar.dart';
import 'package:petfinderapp/features/splash/presentation/widgets/custom_elevation_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 305,
              width: 445,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/getstarted.png'),
                  // fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 50.h),
            Text(
              'Find Your Best Companion With Us',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10.h),
            Text(
              'Join & discover the best suitable pets as per your preferences in your location',
              textAlign: TextAlign.center,

              style: TextStyle(
                height: 1.7.h,
                fontSize: 16.sp,
                color: Color(0xFF9F9F9F),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.r),
              child: CustomElevationButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()),
                  );
                },
                label: 'Get Started',
                icon: SvgPicture.asset(
                  'assets/svg/ic_outline-pets.svg',
                  height: 20.h,
                  width: 20.w,
                ),
                backgroundColor: AppTheme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
