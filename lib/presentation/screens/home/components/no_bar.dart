// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../resources/app_textstyle.dart';
import '../../../resources/resources.dart';

class ActiveWithoutBarPlan extends StatelessWidget {
  const ActiveWithoutBarPlan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: HexColor("#727DA6").withOpacity(0.4),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kMediumVerticalSpacing,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: HexColor("0F5879"),
            ),
            child: Text(
              'Goals',
              style: bodySmallText(context).copyWith(color: kWhiteColor),
            ),
          ),
          kSmallVerticalSpacing,
          Text(
            'Saving for school',
            style: bodySmallText(context),
          ),
          kMediumVerticalSpacing,
          Text(
            '₦ 1,324,000.00',
            style: bodyNormalText(context).copyWith(
                fontFamily: '',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: HexColor("#253E4A")),
          ),
          kSmallVerticalSpacing,
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: HexColor("#1CBC31"),
                ),
                child: Text(
                  'ON TRACK',
                  style: bodyTinyText(context)
                      .copyWith(color: kWhiteColor, fontSize: 10),
                ),
              ),
              kSmallHorizontalSpacing,
              Text(
                '18 DAYS TO MATURITY',
                style: bodyTinyText(context).copyWith(fontSize: 10),
              ),
            ],
          ),
          kSmallVerticalSpacing,
        ],
      ),
    );
  }
}
