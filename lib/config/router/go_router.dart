import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nature_care/module/home/screen/fav.dart';
import 'package:nature_care/module/home/screen/shipping.dart';

import '../../module/home/screen/bottom_navigation.dart';
import '../../module/home/screen/home_screen.dart';
import '../../module/home/screen/splas_screen.dart';
import '../../module/login/screen/login_screen.dart';
import '../../module/login/screen/sign_up_screen.dart';

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
const _scaffoldKey = ValueKey<String>('');
final router = GoRouter(
    initialLocation: '/splas',
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/splas',
        builder: (context, state) => const SplasScreen(),
      ),
      GoRoute(
        path: '/log-in',
        builder: ((context, state) => const LoginScreen()),
      ),
      GoRoute(
        path: '/sign-up',
        builder: (context, state) => const SignUpScreen(),
      ),
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state, child) {
            return NoTransitionPage(
                child: ScaffoldBottomBar(
              child: child,
            ));
          },
          routes: [
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              path: '/',
              builder: (context, state) => const HomeScreen(
                key: _scaffoldKey,
              ),
            ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              path: '/fav',
              builder: (context, state) => const FavoriteScreen(),
            ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              path: '/shipping',
              builder: (context, state) => const ShippingScreen(),
            ),
          ]),
      // GoRoute(path: '/', builder: (context, state) => const SplasScreen(), routes: [

      // ])
    ]);
