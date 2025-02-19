import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      height: 67,
      color: Colors.white,
      notchMargin: 10,
      shape: CircularNotchedRectangle(),
      child: Row(
        children: [
          BottomNavBarItem(icon: 'assets/icons/nav/home_nav.svg'),
          BottomNavBarItem(
            icon: 'assets/icons/nav/heart_nav.svg',
            margin: EdgeInsets.only(right: 60),
          ),
          BottomNavBarItem(
            icon: 'assets/icons/nav/cart_nav.svg',
            margin: EdgeInsets.only(left: 60),
          ),
          BottomNavBarItem(icon: 'assets/icons/nav/account_nav.svg'),
        ],
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    super.key,
    required this.icon,
    this.margin,
  });

  final String icon;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: margin,
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
