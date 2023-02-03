import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature_care/module/home/model/testModel/test_model.dart';
import 'package:nature_care/util/helper/api_base_helper.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final isLoadingAllProduct = false.obs;
  final productModel = TestModel().obs;
  final productList = <TestModel>[].obs;
  ApiBaseHelper apiBaseHelper = ApiBaseHelper();
  Future<List<TestModel>> getAllProduct() async {
    debugPrint('hiiii===========33333');
    isLoadingAllProduct(true);
    String url = 'https://api.openbrewerydb.org/breweries';
    try {
      await http.get(Uri.parse(url), headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      }).then((res) {
        if (res.statusCode == 200) {
          var resJson = json.decode(res.body);
          productList.clear();
          resJson.map((e) {
            productList.add(TestModel.fromJson(e));
          }).toList();
          isLoadingAllProduct(false);
        }
      });
      // await apiBaseHelper
      //     .onNetworkRequesting(
      //         methode: METHODE.get, isAuthorize: false, url: 'v1/products.json')
      //     .then((res) {
      //   debugPrint('hiiii===========$res');
      //   productModel.value = ProductModel.fromJson(res);
      //   productList.clear();
      //   debugPrint('hiiii===========$res');

      //   res.map((e) {
      //     debugPrint('hiiii===========1111$res');

      //     productList.add(productModel.value);
      //     debugPrint('hiiii===========22222$res');
      //   }).toList();
      // }).onError((ErrorModel error, stackTrace) {
      //   debugPrint('Fix me error++++++:$error');
      //   isLoadingAllProduct(false);
      // });
    } catch (e) {
      isLoadingAllProduct(false);
    } finally {
      isLoadingAllProduct(false);
    }

    return productList;
  }
}
