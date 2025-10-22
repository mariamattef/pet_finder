import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petfinderapp/core/app_theme.dart';
import 'package:petfinderapp/features/home/domain/entities/cat_entity.dart';

class DetailsScreen extends StatelessWidget {
  final CatEntity cats;
  const DetailsScreen({required this.cats, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: AppTheme.primaryColor),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SvgPicture.asset(
              'assets/svg/heart2.svg',
              colorFilter: ColorFilter.mode(
                AppTheme.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: Center(child: Text('Details screen')),
    );
  }
}
