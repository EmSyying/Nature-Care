import 'package:flutter/material.dart';
import 'package:nature_care/module/home/model/testModel/test_model.dart';
import 'package:nature_care/util/colors/app_colors.dart';

class CustomBaseCard extends StatefulWidget {
  final String? img;
  final String? title;
  final String? discount;
  final String? price;
  final String? currency;
  final bool? isSelect;
  TestModel? testModel;
  final GestureTapCallback? onTapincrease;
  final GestureTapCallback? onTapminus;
  final GestureTapCallback? onTap;
  final int? qty;

  CustomBaseCard(
      {super.key,
      this.img,
      this.title,
      this.discount,
      this.price,
      this.currency,
      this.isSelect,
      this.onTap,
      this.testModel,
      this.onTapincrease,
      this.onTapminus,
      this.qty});

  @override
  State<CustomBaseCard> createState() => _CustomBaseCardState();
}

class _CustomBaseCardState extends State<CustomBaseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        width: 200,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 3,
              offset: const Offset(1, 1),
              color: Colors.grey[300]!,
            ),
          ],
          image: const DecorationImage(
              image: NetworkImage(
                'https://cdn.shopify.com/s/files/1/0576/9756/6896/files/EMAIL_3_-_best_customer_service_1_2048x.png?v=1665631787',
              ),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, top: 5, right: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${widget.title}'),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${widget.price}'),
                          Container(
                            width: 80,
                            height: 25,
                            color: AppColors.secondColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        color: AppColors.primaryColor),
                                    child: GestureDetector(
                                        onTap: widget.onTapincrease,
                                        child: const Text('+')),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Text('${widget.qty}'),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        color: AppColors.primaryColor),
                                    child: GestureDetector(
                                        onTap: widget.onTapminus,
                                        child: const Text('-')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: Container(
            //     margin: const EdgeInsets.only(top: 5),
            //     // width: 120,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       // color: Colors.white54,
            //     ),
            //     child: Image.network(
            //       'https://cdn.shopify.com/s/files/1/0576/9756/6896/files/EMAIL_3_-_best_customer_service_1_2048x.png?v=1665631787',
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            // Container(
            //   width: double.infinity,
            //   // height: MediaQuery.of(context).size.height * 0.08,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Colors.white.withOpacity(0.4),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(left: 8, top: 5),
            //         child: Text(
            //           '${widget.title}',
            //           maxLines: 1,
            //           overflow: TextOverflow.ellipsis,
            //         ),
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [Text('${widget.price}'), const Text('+')],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        )
        // child: Column(
        //   children: [
        //     // SizedBox(
        //     //     height: 100,
        //     //     child: Image.network(
        //     //       '$img',
        //     //       fit: BoxFit.cover,
        //     //     )),
        //     GestureDetector(
        //       onTap: () {
        //         debugPrint('hiiii');
        //         if (widget.testModel!.isSelect == true) {
        //           widget.testModel = widget.testModel!.copyWith(isSelect: false);
        //         } else {
        //           widget.testModel = widget.testModel!.copyWith(isSelect: true);
        //         }
        //       },
        //       child: Container(
        //         height: 150,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10),
        //           color: widget.testModel!.isSelect == true
        //               ? Colors.green
        //               : Colors.blue,
        //         ),
        //         child: Column(
        //           children: [
        //             Text('${widget.testModel!.name}'),
        //             Row(
        //               children: [
        //                 // Text('$currency $price'),
        //                 Text('${widget.testModel!.breweryType}'),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
