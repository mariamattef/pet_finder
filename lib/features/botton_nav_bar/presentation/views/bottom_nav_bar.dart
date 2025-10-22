import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petfinderapp/core/app_theme.dart';
import 'package:petfinderapp/features/home/presentation/views/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text('Favorite Screen'),
    Text('Chat Screen'),
    Text('Profile Screen'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.primaryColor,
        unselectedItemColor: Color(0xFF8C8C8C),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/svg/home-1.svg')
                : SvgPicture.asset('assets/svg/home-2.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/svg/heart2.svg')
                : SvgPicture.asset('assets/svg/heart.svg'),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/svg/messages2.svg')
                : SvgPicture.asset('assets/svg/messages.svg'),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset('assets/svg/profile-circle2.svg')
                : SvgPicture.asset('assets/svg/profile.svg'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
