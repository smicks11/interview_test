import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../resources/app_textstyle.dart';
import '../../../resources/resources.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Finish setting up your account',
                style: heading1(context).copyWith(
                    color: kSecondaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              kSmallVerticalSpacing,
              Row(
                children: [
                  Expanded(
                      child: Text(
                    '75%',
                    style:
                        heading3(context).copyWith(fontWeight: FontWeight.bold),
                  )),
                  Text(
                    '7 of 10 completed',
                    style: bodyTinyText(context),
                  ),
                ],
              ),
              kSmallVerticalSpacing,
              LinearPercentIndicator(
                width: size.width * 0.82,
                lineHeight: 10.0,
                percent: 0.7,
                backgroundColor: Colors.grey[300],
                progressColor: kSecondaryColor,
              ),
              kSmallVerticalSpacing,
              Divider(
                color: Colors.black26,
              ),
              kMediumHorizontalSpacing,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.person,
                    color: kSecondaryColor,
                  ),
                  kSmallHorizontalSpacing,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Information',
                        style: bodySmallText(context).copyWith(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      kSmallVerticalSpacing,
                      Text(
                        'When you register for an account, we collect personal information',
                        style: bodySmallText(context),
                      ),
                      kMediumVerticalSpacing,
                      Text(
                        'Continue',
                        style: bodyNormalText(context),
                      ),
                      kTinyVerticalSpacing,
                      Divider(
                        color: Colors.black26,
                      ),
                    ],
                  ))
                ],
              ),
              kSmallVerticalSpacing,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.verified_user,
                    size: 22,
                    color: kSecondaryColor,
                  ),
                  kSmallHorizontalSpacing,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verification',
                        style: bodySmallText(context).copyWith(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      kMediumVerticalSpacing,
                      Divider(
                        color: Colors.black26,
                      ),
                    ],
                  ))
                ],
              ),
              kSmallVerticalSpacing,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.email,
                    size: 22,
                    color: kSecondaryColor,
                  ),
                  kSmallHorizontalSpacing,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Confirm email',
                        style: bodySmallText(context).copyWith(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      kMediumVerticalSpacing,
                    ],
                  ))
                ],
              )
            ],
          ),
        ),
        Positioned(
            bottom: 50,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: kSecondaryColor,
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: 28,
              ),
            ))
      ],
    );
  }
}