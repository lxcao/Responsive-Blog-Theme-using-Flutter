/*
 * @Author: clingxin
 * @Date: 2021-04-12 10:33:27
 * @LastEditTime: 2021-04-12 10:34:13
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /Responsive-Blog-Theme-using-Flutter-Starting-Project/lib/screens/main/components/socal.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Socal extends StatelessWidget {
  const Socal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/behance-alt.svg"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: SvgPicture.asset("assets/icons/feather_dribbble.svg"),
        ),
        SvgPicture.asset("assets/icons/feather_twitter.svg"),
        SizedBox(
          width: kDefaultPadding,
        ),
        ElevatedButton(
          onPressed: () => {},
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding,
            ),
          ),
          child: Text("Let's Talk"),
        ),
      ],
    );
  }
}
