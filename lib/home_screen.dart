import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_asif/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          
          Card(
            child: ListTile(
              onTap: () {
                Get.defaultDialog(
                    title: 'Dialog',
                    titlePadding: const EdgeInsets.only(top: 20),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('Ok')));
              },
              title: const Text('Message'),
              subtitle: const Text('I am learning GetX '),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    color: Colors.lime,
                  ),
                  child:  Column(children: [
                     ListTile(
                      onTap: (){
                        Get.changeTheme(ThemeData.light());
                      },
                      leading: const Icon(Icons.light_mode),
                      title: const Text('Light Mode'),
                    ),
                    ListTile(
                      onTap: (){
                        Get.changeTheme(ThemeData.dark());
                      },
                      leading: const Icon(Icons.dark_mode),
                      title: const Text('Dark Mode'),
                    ),
                ],),));
              },
              title: const Text('BottomSheet'),
              subtitle: const Text('I am learning GetX '),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.to(const ScreenOne());
                // Get.toNamed('/screenOne'); // getX routing
              },
              title: const Text('Routing'),
              subtitle: const Text('I am learning GetX '),
            ),
          ),
          Container(
            // Use as Media query
            height: Get.height*.1,
            width: Get.width,
            color: Colors.lime,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Click'),
        onPressed: () {
          Get.snackbar(
            'Notification',
            'New notification from whatsApp',
            isDismissible: true,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
      ),
    );
  }
}
