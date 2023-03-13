import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nature_care/module/home/controller/home_controller.dart';
import 'package:nature_care/module/home/screen/shipping.dart';
import 'package:nature_care/module/login/controller/login_controller.dart';
import 'package:nature_care/util/colors/app_colors.dart';
import 'package:nature_care/util/helper/custom_appbar.dart';
import 'package:nature_care/widget/custom_all_menu_card.dart';
import 'package:nature_care/widget/custom_base_card.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../widget/custom_category_menu.dart';
import '../model/categoryModel/category_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  int qty = 0;
  int currentSelect = 0;
  int? monthIndex;
  void onIncrease() {
    qty++;
  }

  int startIndex = 0;
  int endIndex = -1;

  static DateTime addDaysToDate(DateTime date, int days) {
    return DateTime(date.year, date.month, date.day + days);
  }

  DateTime now = DateTime.now();

  // onMinus() {
  //   int i = qty;

  // }
  AutoScrollController scrollController = AutoScrollController();
  int? isSingleSelect;
  final homeCon = Get.put(HomeController());
  final loginCon = Get.put(LoginController());
  List calandar = [];
  @override
  void initState() {
    onIncrease();
    homeCon.getAllProduct();
    homeCon.getUser();
    homeCon.fetchCompany();
    homeCon.getMonth().then((value) {
      debugPrint("value ${homeCon.monthList.length}");
      homeCon.monthList.map((element) {
        // calandar.add(element.year.toString());
        element.month!.map((e) {
          calandar.add(e.name);
        }).toList();
      }).toList();
      setState(() {});
      debugPrint("gelokdsa ${calandar.length.toString()}");
    });

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
          // leading: GestureDetector(
          //   onTap: () {},
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 20),
          //     child: Center(
          //       child: SvgPicture.asset(
          //         'assets/image/menu.svg',
          //         width: 30,
          //         height: 30,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.primaryColor, AppColors.aColor],
              )),
              child: Column(
                children: [
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      border:
                          Border.all(width: 1, color: AppColors.primaryColor),
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://media.istockphoto.com/id/522855255/vector/male-profile-flat-blue-simple-icon-with-long-shadow.jpg?s=612x612&w=0&k=20&c=EQa9pV1fZEGfGCW_aEK5X_Gyob8YuRcOYCYZeuBzztM=',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ying Bee',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.phone,
              ),
              title: Text(
                '+85569722942',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const ShippingScreen()),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.language,
              ),
              title: Text(
                'Change Language',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.history,
              ),
              title: Text(
                'Order History',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.person_rounded,
              ),
              title: Text(
                'My Profile',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 0.5,
              color: AppColors.primaryColor,
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: Text(
                'Logout',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onTap: () {
                Navigator.pop(context);
                loginCon.onLogOut(context);
              },
            ),
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: const Text(''),
            expandedHeight: 200,
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
                        style: theme.displayLarge,
                      ),
                    ),
                    Row(
                      children: [
                        ...categoryList.asMap().entries.map((e) {
                          return CustomCategoryMenu(
                            categoryModel: e.value,
                          );
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            // width: 200,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: calandar.length,
                                controller: scrollController,
                                itemBuilder: (context, index) {
                                  return AutoScrollTag(
                                    index: index,
                                    key: ValueKey(index),
                                    controller: scrollController,
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            startIndex = index;
                                            setState(() {});
                                          },
                                          child: Container(
                                            color: index == startIndex
                                                ? AppColors.cestColor
                                                : Colors.transparent,
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            margin: const EdgeInsets.all(10),
                                            child: Text(
                                              '${calandar[index]}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium!
                                                  .copyWith(fontSize: 24),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            debugPrint(
                                "categoryList.length ${calandar.length} , $startIndex");
                            if (startIndex == calandar.length - 1) {
                              startIndex = 0;
                            } else {
                              startIndex++;
                            }
                            // if (pageController.page != 0) {
                            //   pageController.animateToPage(startIndex,
                            //       duration: const Duration(microseconds: 200),
                            //       curve: Curves.fastOutSlowIn);
                            // }

                            scrollController.scrollToIndex(startIndex,
                                preferPosition: AutoScrollPosition.begin);
                            setState(() {});

                            //              if (startIndex == -1) {
                            //   startIndex = index;
                            //   endIndex = index;
                            // } else if (startIndex <= index) {
                            //   endIndex = index;
                            // } else {
                            //   endIndex = startIndex;
                            //   startIndex = index;
                            // }
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                    // NotificationListener<ScrollNotification>(
                    //     onNotification: (ScrollNotification notification) {
                    //       if (notification.metrics.pixels ==
                    //           notification.metrics.maxScrollExtent) {
                    //         homeCon.getMonth();
                    //       }
                    //       return false;
                    //     },
                    //     child: SingleChildScrollView(
                    //       scrollDirection: Axis.horizontal,
                    //       child: Obx(
                    //         () => Row(
                    //           children: [
                    //             ...homeCon.monthModel.value.month!
                    //                 .asMap()
                    //                 .entries
                    //                 .map((e) {
                    //               return Padding(
                    //                 padding: const EdgeInsets.only(left: 40),
                    //                 child: Text(
                    //                   'okk',
                    //                   style: Theme.of(context)
                    //                       .textTheme
                    //                       .displayLarge!
                    //                       .copyWith(fontSize: 24),
                    //                 ),
                    //               );
                    //             })
                    //           ],
                    //         ),
                    //       ),
                    //     )),
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text('Base Seller'),
                ),
                Obx(
                  () => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...homeCon.testUserList.asMap().entries.map(
                          (e) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CustomBaseCard(
                                title: e.value.name,
                                price: '15\$',
                                qty: qty,
                                onTapincrease: () {
                                  // debugPrint('000:${onIncrease()}');
                                  onIncrease();
                                },
                                onTapminus: () {
                                  onIncrease();
                                },

                                // testModel: e.value,
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
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 20),
                  child: Text('All Product'),
                ),
                const CustomAllMenuCard(
                  title: 'skin care',
                  price: 12,
                )
                //====================multiple and single single select
                // ...categoryList.asMap().entries.map((e) {
                //   return GestureDetector(
                //     onTap: () {
                //       setState(() {
                //         if (isSingleSelect == e.key) {
                //           isSingleSelect = null;
                //         } else {
                //           isSingleSelect = e.key;
                //         }
                //         if (categoryList[e.key].isSelect == true) {
                //           categoryList[e.key] =
                //               categoryList[e.key].copyWith(isSelect: false);
                //         } else {
                //           categoryList[e.key] =
                //               categoryList[e.key].copyWith(isSelect: true);
                //         }
                //       });
                //     },
                //     child: Container(
                //       margin: const EdgeInsets.only(left: 20, top: 20),
                //       color: categoryList[e.key].isSelect == true
                //           ? Colors.amber
                //           : const Color.fromARGB(255, 243, 187, 183),
                //       width: 50,
                //       height: 50,
                //       child: Center(
                //         child: isSingleSelect != e.key
                //             ? const Text('No')
                //             : const Text('Ok'),
                //       ),
                //     ),
                //   );
                // }),
                // Obx(
                //   () => Text('${homeCon.testCompanyModel.value.id}'),
                // ),
              ],
            ),
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
