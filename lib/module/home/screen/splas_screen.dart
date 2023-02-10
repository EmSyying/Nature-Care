import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:nature_care/util/colors/app_colors.dart';
import 'package:nature_care/util/helper/local_storage.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  onstore() async {
    final token = await LocalStorage.getStringValue(key: 'token');
    Future.delayed(const Duration(seconds: 5), () {
      if (token == '') {
        context.go('/log-in');
      } else {
        context.go('/');
      }
    });
  }

  @override
  void initState() {
    onstore();
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
