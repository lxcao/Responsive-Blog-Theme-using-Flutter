/*
 * @Author: clingxin
 * @Date: 2021-04-15 09:58:49
 * @LastEditors: clingxin
 * @LastEditTime: 2021-04-15 16:11:26
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/screens/home/components/recent_posts.dart
 */
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../screens/home/components/sidebar_container.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Recent Post",
      child: Column(
        children: [
          RecentPostCard(
            image: "assets/images/recent_1.png",
            title: "Our “Secret” Formula to Online Workshops",
            press: () {},
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          RecentPostCard(
            image: "assets/images/recent_2.png",
            title: "Digital Product Innovations from Warsaw with Love",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback press;
  const RecentPostCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              flex: 5,
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "Raleway",
                  color: kDarkBlackColor,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
