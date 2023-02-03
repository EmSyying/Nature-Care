import 'package:flutter/material.dart';
import 'package:nature_care/module/home/model/testModel/test_model.dart';

class CustomBaseCard extends StatefulWidget {
  final String? img;
  final String? title;
  final String? discount;
  final String? price;
  final String? currency;
  final bool? isSelect;
  TestModel? testModel;
  final GestureTapCallback? onTap;

  CustomBaseCard(
      {super.key,
      this.img,
      this.title,
      this.discount,
      this.price,
      this.currency,
      this.isSelect,
      this.onTap,
      this.testModel});

  @override
  State<CustomBaseCard> createState() => _CustomBaseCardState();
}

class _CustomBaseCardState extends State<CustomBaseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.pink,
      ),
      child: Column(
        children: [
          // SizedBox(
          //     height: 100,
          //     child: Image.network(
          //       '$img',
          //       fit: BoxFit.cover,
          //     )),
          GestureDetector(
            onTap: () {
              debugPrint('hiiii');
              if (widget.testModel!.isSelect == true) {
                widget.testModel = widget.testModel!.copyWith(isSelect: false);
              } else {
                widget.testModel = widget.testModel!.copyWith(isSelect: true);
              }
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.testModel!.isSelect == true
                    ? Colors.green
                    : Colors.blue,
              ),
              child: Column(
                children: [
                  Text('${widget.testModel!.name}'),
                  Row(
                    children: [
                      // Text('$currency $price'),
                      Text('${widget.testModel!.breweryType}'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
