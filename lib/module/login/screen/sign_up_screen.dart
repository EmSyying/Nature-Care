import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../util/colors/app_colors.dart';
import '../../../util/helper/custom_textformfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
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
                'Sign Up',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: AppColors.secondColor, fontSize: 26),
              ),
            ),
          ),
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
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextFieldNew(
                    // controller: con.phoneController,
                    // onChange: (e) {
                    //   con.textPhone.value = e;
                    // },
                    hintText: 'Full Name',
                    labelText: 'Name',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextFieldNew(
                        // controller: con.passwordController,
                        onChange: (e) {
                          // con.textPassword;
                          // con.textPassword.value = e;
                        },
                        hintText: 'Phone',
                        labelText: 'Phone Number',
                      ),
                      CustomTextFieldNew(
                        // controller: con.passwordController,
                        onChange: (e) {
                          // con.textPassword;
                          // con.textPassword.value = e;
                        },
                        hintText: 'Password',
                        labelText: 'Set Password',
                      ),
                      CustomTextFieldNew(
                        // controller: con.passwordController,
                        onChange: (e) {
                          // con.textPassword;
                          // con.textPassword.value = e;
                        },
                        hintText: 'Verify',
                        labelText: 'Verify Password',
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
                      // con.onLogin(context);
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
                        'Sign Up',
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
                        const Text('Already have an Account?'),
                        TextButton(
                          child: const Text('Sign in'),
                          onPressed: () {
                            context.go('/log-in');
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
