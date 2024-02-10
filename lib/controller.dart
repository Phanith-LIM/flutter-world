import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {
  void showLanguage() {
    Get.dialog(
      SimpleDialog(
        title: const Text('Select Language'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),

        children: [
          SimpleDialogOption(
            onPressed: () {
              Get.updateLocale(const Locale('en', 'US'));
              Get.back();
            },
            child: const Text('English'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Get.updateLocale(const Locale('kh', 'CM'));
              Get.back();
            },
            child: const Text('ខ្មែរ'),
          ),
        ],
      ),
    );
  }
}