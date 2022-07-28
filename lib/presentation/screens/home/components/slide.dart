import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../resources/app_textstyle.dart';
import '../../../resources/resources.dart';

class HomeSliderbox extends StatelessWidget {
  final String text;
  final String desc;
  final Color iconColor;
  final Color boxColor;
  const HomeSliderbox({
    Key? key,
    required this.text,
    required this.desc,
    required this.iconColor,
    required this.boxColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 150,
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: boxColor, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kMediumVerticalSpacing,
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconColor,
            ),
            child: SvgPicture.asset('assets/svg/Path 32.svg'),
          ),
          kMediumVerticalSpacing,
          Text(
            text,
            style: bodyNormalText(context).copyWith(
                fontSize: 22,
                color: HexColor("#1DAFF2"),
                fontWeight: FontWeight.bold),
          ),
          kSmallVerticalSpacing,
          Text(
            desc,
            style: bodySmallText(context),
          )
        ],
      ),
    );
  }
}