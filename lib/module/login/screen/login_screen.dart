import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:nature_care/module/login/controller/login_controller.dart';
import 'package:nature_care/util/colors/app_colors.dart';
import 'package:nature_care/util/helper/custom_textformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(LoginController());
    return Scaffold(
      body: Column(
        children: [
          // customAppBar(
          //     title: '',
          //     context: context,
          //     backgroundColor: Colors.green,
          //     elevated: 0,
          //     systemUiOverlayStyle: SystemUiOverlayStyle.dark),
          Container(
            height: 180,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 80),
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Center(
                child: Text(
              'Welcom',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: AppColors.secondColor, fontSize: 26),
            )),
            // child: Container(
            //   margin: const EdgeInsets.only(top: 80),
            //   width: 120,
            //   height: 120,
            //   child: Image.network(
            //     'https://uxwing.com/wp-content/themes/uxwing/download/beauty-fashion/skincare-icon.png',
            //     color: AppColors.primaryColor,
            //   ),
            // ),
          ),
          // const SizedBox(
          //   height: 30,
          // ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/image/splas.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFieldNew(
                    controller: con.phoneController,
                    // onChange: (e) {
                    //   con.textPhone.value = e;
                    // },
                    validateText: con.passwordController.toString(),
                    hintText: 'Phone',
                    labelText: 'Phone number',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextFieldNew(
                        controller: con.passwordController,
                        onChange: (e) {
                          con.textPassword;
                          // con.textPassword.value = e;
                        },
                        hintText: 'Password',
                        labelText: 'Password',
                        // obscureText: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {}, child: const Text('Forgot Password')),
                      ),
                    ],
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
                          color: AppColors.primaryColor),
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
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Do not have an Account?'),
                        TextButton(
                          child: const Text('Sign Up'),
                          onPressed: () {
                            context.go('/sign-up');
                          },
                        )
                      ],
                    ),
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
