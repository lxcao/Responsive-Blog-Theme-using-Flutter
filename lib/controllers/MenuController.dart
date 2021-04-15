/*
 * @Author: clingxin
 * @Date: 2021-04-11 21:19:56
 * @LastEditTime: 2021-04-15 10:23:23
 * @LastEditors: clingxin
 * @Description: In User Settings Edit
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/controllers/MenuController.dart
 */
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;

  List<String> get menuItems =>
      ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];

  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openEndDrawer();
    } else {
      _scaffoldKey.currentState.openDrawer();
    }
  }

  void setMenuIndex(int index) => _selectedIndex.value = index;
}
