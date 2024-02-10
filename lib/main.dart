import 'package:flutter/material.dart';
import 'package:flutter_world/index.dart';
import 'package:flutter_world/local_string.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Translate',
      translations: LocalString(),
      locale: const Locale('kh', 'CM'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IndexView(),
    );
  }
}