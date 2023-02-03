import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:nature_care/util/colors/app_colors.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      context.go('/');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Lottie.asset(
          'assets/image/Cosmetic.json',
        ),
        // Image.asset(
        //   'assets/image/splas.png',
        //   width: 150,
        //   height: 150,
        // ),
      ),
    );
  }
}
