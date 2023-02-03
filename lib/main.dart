import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nature_care/util/colors/app_colors.dart';
import 'package:nature_care/util/helper/local_storage.dart';

import 'config/router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold),
          displayMedium: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w700),
          displaySmall: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w600),
          headlineMedium: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w500),
          headlineSmall: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500),
          titleLarge: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w400),
        ),
        primaryColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor,
          titleTextStyle: TextStyle(
            fontFamily: 'Roboto-Thin',
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
