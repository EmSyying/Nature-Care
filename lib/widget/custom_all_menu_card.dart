import 'package:flutter/material.dart';
import 'package:nature_care/util/colors/app_colors.dart';

class CustomAllMenuCard extends StatelessWidget {
  final String? title;
  final num? price;
  final GestureTapCallback? onTap;
  const CustomAllMenuCard({super.key, this.title, this.price, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 10,
              right: 15,
            ),
            width: 120,
            color: AppColors.cestColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  '$title',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 15, bottom: 20),
                    child: Text(
                      '$price\$',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
