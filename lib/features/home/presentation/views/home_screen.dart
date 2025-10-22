import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petfinderapp/core/app_theme.dart';
import 'package:petfinderapp/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:petfinderapp/features/home/presentation/widgets/list_of_cats.dart';
import 'package:petfinderapp/features/home/presentation/widgets/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    "All",
    "Cats",
    "Dogs",
    "Birds",
    "Fish",
    "Reptiles",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          children: [
            SearchTextFiel(),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Categories',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            listOfCategories(),
            SizedBox(height: 10.h),
            Expanded(child: ListOfCats()),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView listOfCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 8.w),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppTheme.primaryColor
                    : Color(0xFFEDF9F7),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: selectedIndex == index
                      ? Color(0xFFEDF9F7)
                      : AppTheme.primaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
