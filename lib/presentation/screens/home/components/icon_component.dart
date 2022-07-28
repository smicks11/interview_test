import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../resources/app_textstyle.dart';
import '../../../resources/resources.dart';

class TopIcons extends StatelessWidget {
  final String? icon;
  final Color? color;
  final String? text;
  const TopIcons({
    Key? key, this.icon, this.color, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: HexColor("7FCCEF"),
              width: 0.5
            ),
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(icon!)
        ),
        kTinyVerticalSpacing,
        Text(text!, textAlign: TextAlign.center, style: bodyTinyText(context).copyWith(fontSize: 10,color: kWhiteColor.withOpacity(0.8)),)
      ],
    );
  }
}