import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:nature_care/util/helper/local_storage.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ontoken() async {
    final token = await LocalStorage.getStringValue(key: 'token');
    debugPrint('tokennnn: $token');
  }

  final textPhone = ''.obs;
  final textPassword = ''.obs;
  final isloadingLogin = true.obs;
  Future<void> onLogin(BuildContext context) async {
    debugPrint('00000000000:');
    isloadingLogin(true);
    String url = 'https://cicstaging.z1central.com/api/login';
    debugPrint('00000000000333:');
    try {
      debugPrint('hiiiii');
      await http.post(Uri.parse(url), headers: {
        'Accept': 'application/json'
      }, body: {
        "phone": '+855${phoneController.text}'.replaceFirst('0', ''),
        "password": passwordController.text
      }).then((res) {
        debugPrint('000000000001111:');
        if (res.statusCode == 200) {
          var token = json.decode(res.body)['access_token'];
          debugPrint('okkkk:$token');
          LocalStorage.storeData(key: 'token', value: token);
          debugPrint('okkkk11111:${res.statusCode}');
          context.go('/');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Center(
                  child: Text(
                'Invalid Phone Number',
                style: Theme.of(context).textTheme.displayMedium,
              )),
              backgroundColor: Colors.red,
            ),
          );
          debugPrint('nooooo:${res.body}');
          debugPrint('nooo11111:${res.statusCode}');
        }
      });
    } catch (e) {
      isloadingLogin(false);
    } finally {
      isloadingLogin(false);
    }
  }

  onLogOut(BuildContext context) async {
    LocalStorage.storeData(key: 'token', value: '');
    context.go('/log-in');
  }

  @override
  void onInit() {
    ontoken();
    // TODO: implement onInit
    super.onInit();
  }
}
