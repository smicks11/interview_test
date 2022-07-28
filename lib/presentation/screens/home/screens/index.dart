// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview/core/model/home_box_model.dart';
import 'package:interview/presentation/resources/app_textstyle.dart';
import 'package:interview/presentation/resources/resources.dart';
import '../components/active_plan.dart';
import '../components/no_bar.dart';
import '../components/picture_widget.dart';
import '../components/section_tow.dart';
import '../components/slide.dart';
import '../components/top_bar.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(size: size),
              kSmallVerticalSpacing,
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTwo(size: size),
                    kMediumVerticalSpacing,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Text(
                        'Start saving',
                        style: bodyNormalText(context).copyWith(
                            color: kSecondaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    kSmallVerticalSpacing,
                    Container(
                      height: 250,
                      margin: EdgeInsets.only(left: 10),
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: slideList.length,
                          itemBuilder: (_, index) {
                            return HomeSliderbox(
                                text: slideList[index].name,
                                desc: slideList[index].desc,
                                iconColor: slideList[index].iconColor,
                                boxColor: slideList[index].boxColor);
                          }),
                    ),
                    kMediumVerticalSpacing,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Text(
                        'Active Plans',
                        style: bodyNormalText(context).copyWith(
                            color: kSecondaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    kSmallVerticalSpacing,
                    ActivePlan(),
                    kSmallVerticalSpacing,
                    ActiveWithoutBarPlan(),
                    kSmallVerticalSpacing,
                    ActiveWithoutBarPlan(),
                    kSmallVerticalSpacing,
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width * 0.8,
                        height: 40,
                        decoration: BoxDecoration(color: HexColor("#B5E2F8")),
                        child: Text(
                          "See all",
                          style: bodyTinyText(context)
                              .copyWith(color: HexColor("#1DAFF2")),
                        ),
                      ),
                    ),
                    kSmallVerticalSpacing,
                    PictureWidget(size: size)
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
