import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nature_care/module/home/controller/home_controller.dart';
import 'package:nature_care/util/colors/app_colors.dart';
import 'package:nature_care/util/helper/custom_appbar.dart';
import 'package:nature_care/widget/custom_base_card.dart';

import '../../../widget/custom_category_menu.dart';
import '../model/categoryModel/category_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeCon = Get.put(HomeController());
  @override
  void initState() {
    homeCon.getAllProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
          elevated: 0,
          title: '',
          context: context,
          leading: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Center(
                child: SvgPicture.asset(
                  'assets/image/menu.svg',
                  width: 30,
                  height: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          action: [
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/image/Search.svg',
                    width: 25,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 150,
            // title: const Text('sliver app bar'),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              background: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        'Nature Care',
                        style: theme.headline1,
                      ),
                    ),
                    Row(
                      children: [
                        ...categoryList.asMap().entries.map((e) {
                          return CustomCategoryMenu(
                            categoryModel: e.value,
                          );
                        })
                        // CustomCategoryMenu(
                        //   title: 'Hair',
                        //   color: AppColors.cestColor,
                        //   textColor: Colors.white,
                        // ),
                        // CustomCategoryMenu(
                        //   title: 'Face',
                        // ),
                        // CustomCategoryMenu(
                        //   title: 'Body',
                        // ),
                        // CustomCategoryMenu(
                        //   title: 'Nail',
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
        body: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: [
              const Text('Base Seller'),
              // SizedBox(
              //   width: double.infinity,
              //   height: 300,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     itemBuilder: ((context, index) {
              //       return CustomBaseCard(
              //         // img: homeCon.productList[index].imageLink,
              //         title: homeCon.productList[index].name,
              //         price: homeCon.productList[index].price,
              //         currency: homeCon.productList[index].currency,
              //       );
              //     }),
              //     itemCount: 4,
              //   ),
              // ),
              Obx(() => SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...homeCon.productList.asMap().entries.map(
                              (e) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: CustomBaseCard(
                                    testModel: e.value,
                                    // img: e.value.imageLink,
                                    // title: e.value.name,
                                    // price: e.value.price,
                                    // currency: e.value.currency,
                                    // isSelect: e.value.isSelect,
                                    // onTap: () {
                                    //   debugPrint('hiiiiiiii');
                                    // },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      )
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: [
                  //       ...homeCon.productList.asMap().entries.map((e) {
                  //         return Padding(
                  //           padding: const EdgeInsets.only(left: 10),
                  //           child: CustomBaseCard(
                  //             testModel: e.value,
                  //             // img: e.value.imageLink,
                  //             // title: e.value.name,
                  //             // price: e.value.price,
                  //             // currency: e.value.currency,
                  //             // isSelect: e.value.isSelect,
                  //             // onTap: () {
                  //             //   debugPrint('hiiiiiiii');
                  //             // },
                  //           ),
                  //         );
                  //       }),
                  //     ],
                  //   ),
                  // ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

List<CategoryModel> categoryList = [
  CategoryModel(
    title: 'Hair',
  ),
  CategoryModel(
    title: 'Face',
  ),
  CategoryModel(
    title: 'Body',
  ),
  CategoryModel(
    title: 'Nail',
  ),
];
