import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nature_care/module/login/controller/login_controller.dart';
import 'package:nature_care/util/colors/app_colors.dart';
import 'package:nature_care/util/helper/custom_appbar.dart';
import 'package:nature_care/util/helper/custom_textformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(LoginController());
    return Scaffold(
      body: Column(
        children: [
          customAppBar(
              title: '',
              context: context,
              backgroundColor: Colors.transparent,
              elevated: 0,
              systemUiOverlayStyle: SystemUiOverlayStyle.dark),
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: AppColors.primaryColor),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFieldNew(
                    controller: con.phoneController,
                    // onChange: (e) {
                    //   con.textPhone.value = e;
                    // },
                    hintText: 'Phone',
                    labelText: 'Input Phone number',
                  ),
                  CustomTextFieldNew(
                    controller: con.passwordController,
                    onChange: (e) {
                      con.textPassword;
                      // con.textPassword.value = e;
                    },
                    hintText: 'Phone',
                    labelText: 'Input Phone number',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      con.onLogin(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.cestColor),
                      child: Text(
                        'Login',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        con.onLogOut(context);
                      },
                      child: const Text('Logout'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
