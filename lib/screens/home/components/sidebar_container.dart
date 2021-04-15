/*
 * @Author: clingxin
 * @Date: 2021-04-15 09:08:37
 * @LastEditors: clingxin
 * @LastEditTime: 2021-04-15 09:09:44
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/screens/home/components/sidebar_container.dart
 */
import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class SidebarContainer extends StatelessWidget {
  final String title;
  final Widget child;
  const SidebarContainer({
    Key key,
    @required this.title,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultPadding / 4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kDarkBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          child,
        ],
      ),
    );
  }
}
