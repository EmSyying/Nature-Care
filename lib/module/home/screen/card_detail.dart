import 'package:flutter/material.dart';
import 'package:nature_care/util/colors/app_colors.dart';
import 'package:nature_care/util/helper/custom_appbar.dart';

class CardDetailScreen extends StatelessWidget {
  const CardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          context: context,
          backgroundColor: Colors.transparent,
          elevated: 0,
          title: ''),
      backgroundColor: AppColors.bestColor,
      drawer: const Drawer(
        backgroundColor: Colors.pink,
      ),
      body: const Text('jiii'),
    );
  }
}
