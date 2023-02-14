import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nature_care/module/home/controller/home_controller.dart';
import 'package:nature_care/module/home/screen/shipping.dart';
import 'package:nature_care/module/login/controller/login_controller.dart';
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
  int? isSingleSelect;
  final homeCon = Get.put(HomeController());
  final loginCon = Get.put(LoginController());

  @override
  void initState() {
    homeCon.getAllProduct();
    homeCon.getUser();
    homeCon.fetchCompany();
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
                        style: theme.displayLarge,
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
                              padding: const EdgeInsets.only(left: 10),
                              child: CustomBaseCard(
                                title: e.value.name,
                                price: '15\$',

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
                ...categoryList.asMap().entries.map((e) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSingleSelect == e.key) {
                          isSingleSelect = null;
                        } else {
                          isSingleSelect = e.key;
                        }
                        // if (categoryList[e.key].isSelect == true) {
                        //   categoryList[e.key] =
                        //       categoryList[e.key].copyWith(isSelect: false);
                        // } else {
                        //   categoryList[e.key] =
                        //       categoryList[e.key].copyWith(isSelect: true);
                        // }
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      color: categoryList[e.key].isSelect == true
                          ? Colors.amber
                          : const Color.fromARGB(255, 243, 187, 183),
                      width: 50,
                      height: 50,
                      child: Center(
                        child: isSingleSelect != e.key
                            ? const Text('No')
                            : const Text('Ok'),
                      ),
                    ),
                  );
                }),
                // Obx(
                //   () => Text('${homeCon.testCompanyModel.value.id}'),
                // ),
                GetBuilder<HomeController>(
                    init: HomeController(),
                    builder: (con) {
                      return Column(
                        children: [
                          ...homeCon.testCompanyList.asMap().entries.map((e) {
                            return Text('${e.value.id}');
                          }).toList(),
                        ],
                      );
                    }),
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
