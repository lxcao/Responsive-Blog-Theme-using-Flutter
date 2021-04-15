/*
 * @Author: clingxin
 * @Date: 2021-04-14 18:50:05
 * @LastEditTime: 2021-04-15 16:05:11
 * @LastEditors: clingxin
 * @Description: In User Settings Edit
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/screens/home/home_screen.dart
 */

import 'package:flutter/material.dart';
import '../../models/Blog.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(
                blog: blogPosts[index],
              ),
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          SizedBox(
            width: kDefaultPadding,
          ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Categories(),
                SizedBox(
                  height: kDefaultPadding,
                ),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
