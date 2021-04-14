/*
 * @Author: clingxin
 * @Date: 2021-04-14 18:50:05
 * @LastEditTime: 2021-04-14 19:41:06
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/screens/home/home_screen.dart
 */
import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/Blog.dart';
import 'package:news/screens/home/components/blog_post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        SizedBox(
          width: kDefaultPadding,
        ),
        Expanded(
          child: Container(
            height: 400,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}
