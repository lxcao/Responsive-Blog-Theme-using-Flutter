/*
 * @Author: your name
 * @Date: 2021-03-27 14:23:30
 * @LastEditTime: 2021-04-15 11:06:59
 * @LastEditors: clingxin
 * @Description: In User Settings Edit
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/screens/main/main_screen.dart
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/screens/home/home_screen.dart';
import 'package:news/screens/main/components/side_menu.dart';
import 'components/header.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
