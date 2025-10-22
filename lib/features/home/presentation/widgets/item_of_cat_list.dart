import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petfinderapp/core/app_theme.dart';
import 'package:petfinderapp/features/home/domain/entities/cat_entity.dart';
import 'package:petfinderapp/features/home/presentation/views/details_screen.dart';

class ItemOfCatList extends StatelessWidget {
  final CatEntity cats;
  final bool isFavorite;

  const ItemOfCatList({required this.cats, super.key, this.isFavorite = true});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen(cats: cats)),
        );
      },
      child: Card(
        elevation: 1,
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 8.0.r, right: 16.0.r),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 112.w,
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: const Color(0xFFE1F8F9),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://cdn2.thecatapi.com/images/${cats.referenceImageId}.jpg',
                    ),

                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      cats.name,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      cats.origin,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF646464),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/location.svg',
                          width: 16.w,
                        ),
                        SizedBox(width: 5.w),

                        Expanded(
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            cats.origin,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF646464),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SvgPicture.asset(
                'assets/svg/heart.svg',
                colorFilter: isFavorite
                    ? ColorFilter.mode(AppTheme.primaryColor, BlendMode.srcIn)
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
