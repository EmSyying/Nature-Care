// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:nature_care/module/home/model/categoryModel/category_model.dart';
import 'package:nature_care/util/colors/app_colors.dart';

// ignore: must_be_immutable
class CustomCategoryMenu extends StatelessWidget {
  final Color? color;
  final String? title;
  final Color? textColor;
  final CategoryModel? categoryModel;
  int? currentIndex;

  CustomCategoryMenu(
      {super.key, this.title, this.color, this.textColor, this.categoryModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        // if(categoryModel.isSelect)
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 25),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: categoryModel!.isSelect == false
              ? Colors.white
              : AppColors.bestColor,
        ),
        child: Text(
          '${categoryModel!.title}',
          style: theme.headlineSmall!.copyWith(
            color: textColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
