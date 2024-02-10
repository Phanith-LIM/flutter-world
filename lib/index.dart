import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_world/controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexView extends StatelessWidget{
  IndexView({super.key});
  final IndexController controller = Get.put(IndexController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'kingdom of cambodia'.tr,
              style: GoogleFonts.kantumruyPro(
                textStyle: Theme.of(context).textTheme.headlineLarge,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "nation".tr,
                  style: GoogleFonts.kantumruyPro(
                    textStyle: Theme.of(context).textTheme.titleMedium,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 8.0,),
                Text(
                  "religion".tr,
                  style: GoogleFonts.kantumruyPro(
                    textStyle: Theme.of(context).textTheme.titleMedium,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 8.0,),
                Text(
                  "king".tr,
                  style: GoogleFonts.kantumruyPro(
                    textStyle: Theme.of(context).textTheme.titleMedium,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Cambodia is a Southeast Asian nation whose landscape spans low-lying plains, the Mekong Delta, mountains and Gulf of Thailand coastline. Phnom Penh, its capital, is home to the art deco Central Market, glittering Royal Palace and the National Museum's historical and archaeological exhibits.".tr,
                  style: GoogleFonts.kantumruyPro(
                    textStyle: Theme.of(context).textTheme.titleMedium,
                    fontWeight: FontWeight.w400,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: controller.showLanguage,
              child: const Icon(Icons.language),
            ),
            const SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () {
                Get.changeTheme(Get.isDarkMode ? FlexColorScheme.light(scheme: FlexScheme.blueM3).toTheme : FlexColorScheme.dark(scheme: FlexScheme.blueM3).toTheme);
              },
              child: Icon(
                Get.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              ),
            ),
          ],
        ),
    );
  }
}
