import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationScreen extends StatefulWidget {
  const LocalizationScreen({super.key});

  @override
  State<LocalizationScreen> createState() => _LocalizationScreenState();
}

class _LocalizationScreenState extends State<LocalizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localization'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(child: ListTile(
              title: Text('name'.tr), // tr use to translate
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('domain'.tr),
                Text('localization'.tr),
              ],),
              trailing: ElevatedButton(onPressed: (){
                Get.defaultDialog(
                    title: 'Change Language',
                    titlePadding: const EdgeInsets.only(top: 20),
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      TextButton(onPressed: (){
                        Get.updateLocale(const Locale('en', 'US'));
                        Get.back();
                      }, child: const Text('English')),
                      TextButton(onPressed: (){
                        Get.updateLocale(const Locale('hi', 'IN'));
                        Get.back();
                      }, child: const Text('Hindi')),
                      TextButton(onPressed: (){
                        Get.updateLocale(const Locale('ur', 'PK'));
                        Get.back();
                      }, child: const Text('Urdu')),
                    ],),
                    );
              }, child: const Text('lng')),
            ),)
          ],
        ),
      ),
    );
  }
}
