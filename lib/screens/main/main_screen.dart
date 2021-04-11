/*
 * @Author: your name
 * @Date: 2021-03-27 14:23:30
 * @LastEditTime: 2021-04-11 21:06:03
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/screens/main/main_screen.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'components/web_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            //height: 400,
            color: kDarkBlackColor,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/logo.svg"),
                        Spacer(),
                        WebMenu(),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
