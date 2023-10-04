import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_asif/home_screen.dart';
import 'package:getx_with_asif/languages.dart';
import 'package:getx_with_asif/screen_one.dart';
import 'package:getx_with_asif/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('en' , 'US'),// default lang
      translations: Languages(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      // getPages: [
      //   GetPage(name: '/', page:()=> const HomeScreen()),
      //   GetPage(name: '/screenOne', page:()=> const ScreenOne()),
      //   GetPage(name: '/screenTwo', page:()=> const ScreenTwo()),
      // ],
    );
  }
}
