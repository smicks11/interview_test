import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview/presentation/resources/app_textstyle.dart';

import '../../../../core/model/top_icons_model.dart';
import '../../../resources/resources.dart';
import 'icon_component.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.26,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [HexColor("#253E4A"), HexColor("#070C0F")],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        children: [
          kLargeVerticalSpacing,
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    size: 22,
                    color: HexColor("#7FCCEF"),
                  )),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                        color: HexColor("#7FCCEF").withOpacity(0.18),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '₦ 45,093.00',
                        style: bodyNormalText(context).copyWith(
                            fontFamily: '', fontSize: 18, color: kWhiteColor),
                      ),
                    ),
                    kSmallHorizontalSpacing,
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                        color: HexColor("#7FCCEF").withOpacity(0.18),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '\$ 15,093.00',
                        style: bodyNormalText(context).copyWith(
                            fontFamily: '', fontSize: 18, color: kWhiteColor),
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/svg/Path 42.svg'),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: kPrimaryColor),
                        child: Text(
                          '4',
                          style: bodySmallText(context)
                              .copyWith(color: kWhiteColor),
                        ),
                      ))
                ],
              )
            ],
          ),
          kSmallVerticalSpacing,
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 0.9,
            ),
            itemCount: icons.length,
            itemBuilder: (_, index) {
              return InkWell(
                onTap: () {},
                child: TopIcons(
                  icon: icons[index].icon,
                  text: icons[index].text,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}