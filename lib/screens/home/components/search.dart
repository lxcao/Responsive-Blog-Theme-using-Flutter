/*
 * @Author: clingxin
 * @Date: 2021-04-15 09:10:02
 * @LastEditors: clingxin
 * @LastEditTime: 2021-04-15 16:12:30
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/screens/home/components/search.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import '../../../screens/home/components/sidebar_container.dart';

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Search",
      child: TextField(
        onChanged: (value) => {},
        decoration: InputDecoration(
          hintText: "Type Here ...",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: SvgPicture.asset("assets/icons/feather_search.svg"),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                kDefaultPadding / 2,
              ),
            ),
            borderSide: BorderSide(
              color: Color(0xFFCCCCCC),
            ),
          ),
        ),
      ),
    );
  }
}
