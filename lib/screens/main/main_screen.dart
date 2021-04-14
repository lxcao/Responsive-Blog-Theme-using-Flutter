/*
 * @Author: your name
 * @Date: 2021-03-27 14:23:30
 * @LastEditTime: 2021-04-14 19:07:08
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/screens/main/main_screen.dart
 */
import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/screens/home/home_screen.dart';
import 'components/header.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
