import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature_care/module/home/model/testModel/test_model.dart';
import 'package:nature_care/util/helper/api_base_helper.dart';
import 'package:http/http.dart' as http;
import 'package:nature_care/util/helper/local_storage.dart';

import '../model/calendar/calandar/calandar.dart';
import '../model/testCompanyModel/test_company_model.dart';
import '../model/testUser/test_user_model.dart';

class HomeController extends GetxController {
  final isLoadingAllProduct = false.obs;
  final productModel = TestModel().obs;
  final productList = <TestModel>[].obs;
  ApiBaseHelper apiBaseHelper = ApiBaseHelper();
  Future<List<TestModel>> getAllProduct() async {
    debugPrint('hiiii===========33333');
    isLoadingAllProduct(true);
    String url = 'https://gorest.co.in/public/v2/comments';
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

  final testUserModel = TestUserModel().obs;
  final testUserList = <TestUserModel>[].obs;
  final isLoadingUser = false.obs;
  Future<List<TestUserModel>> getUser() async {
    isLoadingUser(true);
    try {
      await apiBaseHelper
          .onNetworkRequesting(
              methode: METHODE.get, isAuthorize: false, url: 'comments')
          .then((res) {
        testUserList.clear();
        res.map((e) {
          // testUserModel.value= TestUserModel.fromJson(e);
          testUserList.add(TestUserModel.fromJson(e));
        }).toList();
      }).onError((ErrorModel errorModel, stackTrace) {
        debugPrint('okkk1111:${errorModel.statusCode}');
      });
    } finally {
      isLoadingUser(false);
    }
    return testUserList;
  }

  final testCompanyModel = TestCompanyModel().obs;
  final testCompanyList = <TestCompanyModel>[].obs;
  final isLoadingCom = false.obs;
  Future<TestCompanyModel> fetchCompany() async {
    isLoadingCom(true);
    String url = 'https://cicstaging.z1central.com/api/v4/company';
    await http.get(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiZGMzNTY2YWYwODQ3YTkwZjI0NjMyODA2YmQ0MDdiMGYyNDk4MjhhMDdiNmVkNWEzNGU5NTAzZGJmZTNmNDYwYzAzZDc5MTY1MGQ4OTA4ZmIiLCJpYXQiOjE2NzU4MjI5MjYuMjUyMzYxLCJuYmYiOjE2NzU4MjI5MjYuMjUyMzY2LCJleHAiOjE3MDczNTg5MjYuMjM1NTU2LCJzdWIiOiIxMSIsInNjb3BlcyI6WyIqIl19.LayLGJcTNlAoBpGoVs8y_3Fc5I79UFH9N7hEaKeK9VkxRdALJT2MHSJRMtHbLLjkY48gIjkjNYIuAdAFSMguvnUrG1xrZifDBElmNvo2mON0xEvkBpoZsnfh7D0H8Iut8X3yHADIGuKASzvViLKU6ZntsH-qhL4YzGKBta7leF24__srRyi-62p1cgK2goX6LGRhxEj2uwJsl-DaV_kKWYElP1vx6kwwlbT4QcXhAxmdyA8DkNOv_48nRD9eC4QCRCMh-XGC65XG26BI-vsuzgXqlkjvVhVx4pbrT3ZzXbqmLez1glkTVVackDMwBy5RRMAnJ8vIm2ZYVvLC-Add3Gj5PPxKozVRcBdp5i4npq4bG28jm5ZQObw6kjEQD9iWgAstj0XzsqgTsGM8PiBxi5YiskCyA_riXwARWmweyZqlKMWM1KmL0ptpwy9ubXFruyzPlHU-ZRdwXOoD_1VPpuB5QlRZqhOiEn2U_cDfklTdRo_PO_gFOs-YrZTecj5k5nCYtJHVTBMKpZIE4gREPf_Qgmy-_5Kqr8ufTQjtMf8XJ-ncW41nXohXhRu39SZy8xbO-Ki1naavvdfRxwjNkFFnXSXGs-PPW9BYiRi24onw6mP8j_nWRz4GiCxBOxQoNOVwM9kwojqFZmxWfSn2ftES6foBSInYyPWLkaXbO8k'
    }).then((res) {
      // debugPrint('okkkkk111::${res.body}');
      try {
        if (res.statusCode == 200) {
          testCompanyList.clear();
          var resJson = json.decode(res.body)['data'];
          // testCompanyModel.value = TestCompanyModel.fromJson(resJson);
          resJson.map((e) {
            testCompanyList.add(TestCompanyModel.fromJson(e));
            debugPrint('okkkkk999999::${testCompanyModel.value.id}');
          }).toList();
          // debugPrint('okkkkk::${testCompanyModel.value.id}');

          debugPrint('length : ${testCompanyList[0].id}');
        } else {
          // debugPrint('error code:::::::${res.statusCode}');
        }
      } catch (e) {
        isLoadingCom(false);
      } finally {
        isLoadingCom(false);
      }
    });
    return testCompanyModel.value;
  }

  final monthModel = CalandarModel().obs;
  final monthList = <CalandarModel>[].obs;
  final isLoadingMonth = false.obs;
  Future<CalandarModel> getMonth() async {
    isLoadingMonth(true);
    String url = 'https://cicstaging.z1central.com/api/v4/event/calendar';
    final token = await LocalStorage.getStringValue(key: 'token');
    await http.get(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    }).then((res) {
      try {
        if (res.statusCode == 200) {
          monthList.clear();
          debugPrint('test====:${res.body}');
          var resJson = json.decode(res.body)['data'];
          debugPrint('test====1111:$resJson');
          debugPrint('test====9999999999999:${monthModel.value.year}');
          // CalandarModel.fromJson(resJson);
          resJson.map((e) {
            monthModel.value = CalandarModel.fromJson(e);
            debugPrint('test====2222:${monthModel.value.year}');

            monthList.add(monthModel.value);
            debugPrint('test====33333:${res.body}');
          }).toList();
        } else {
          debugPrint('Error====2222:${res.body}');
        }
      } catch (e) {
        isLoadingMonth(false);
      } finally {
        isLoadingMonth(false);
      }
    });
    return monthModel.value;
  }
}
