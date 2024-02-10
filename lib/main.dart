import 'package:flex_color_scheme/flex_color_scheme.dart';
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
      title: 'Flutter Theme',
      translations: LocalString(),
      locale: const Locale('kh', 'CM'),
      debugShowCheckedModeBanner: false,
      theme: FlexColorScheme.light(scheme: FlexScheme.blueM3).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.blueM3).toTheme,
      home: IndexView(),
    );
  }
}