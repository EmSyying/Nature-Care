// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../util/colors/app_colors.dart';

class ScaffoldBottomBar extends StatelessWidget {
  final Widget? child;
  const ScaffoldBottomBar({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: child,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.purple,
          ),
          child: BottomNavigationBar(
              elevation: 2,
              currentIndex: onNavigation(context),
              onTap: (int index) => onTapNavugation(index, context),
              // selectedLabelStyle: labelStyle,
              // unselectedLabelStyle: labelStyle,
              selectedItemColor: AppColors.primaryColor,
              selectedFontSize: 12,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              items: const [
                MyCustomBottomNavBarItem(
                  initialLocation: '/',
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                MyCustomBottomNavBarItem(
                  initialLocation: '/fav',
                  icon: Icon(Icons.favorite),
                  label: 'Favorite',
                ),
                MyCustomBottomNavBarItem(
                  initialLocation: '/shipping',
                  icon: Icon(Icons.shopping_cart_sharp),
                  label: 'Add to cart',
                ),
              ]),
        ));
  }
}

class MyCustomBottomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  const MyCustomBottomNavBarItem(
      {required this.initialLocation,
      required Widget icon,
      String? label,
      Widget? activeIcon})
      : super(icon: icon, label: label, activeIcon: activeIcon ?? icon);
}

onNavigation(BuildContext context) {
  final String location = GoRouterState.of(context).location;
  if (location.startsWith('/shipping')) {
    return 2;
  }
  if (location.startsWith('/fav')) {
    return 1;
  }
  if (location.startsWith('/')) {
    return 0;
  }
  return 0;
}

onTapNavugation(int index, BuildContext context) {
  switch (index) {
    case 2:
      GoRouter.of(context).go("/shipping");
      break;
    case 1:
      GoRouter.of(context).go("/fav");
      break;
    case 0:
      GoRouter.of(context).go("/");
      break;
  }
  // if (index == 0) {
  //   context.go('/');
  // }
  // if (index == 1) {
  //   context.go('/fav');
  // }
  // if (index == 2) {
  //   context.go('/shipping');
  // }
}
