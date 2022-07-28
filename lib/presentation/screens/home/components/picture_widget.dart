import 'package:flutter/material.dart';

import '../../../resources/app_textstyle.dart';
import '../../../resources/resources.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        children: [
          Container(
            height: 400,
            width: size.width*1.0,
            decoration: BoxDecoration(
              borderRadius: 
              BorderRadius.circular(20),
                image: DecorationImage(
              image: AssetImage('assets/images/image 28.png'),
              fit: BoxFit.fitWidth,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2),
                BlendMode.darken,
              ),
            )),
          ),
          Positioned(
            bottom: 10,
            left: 30,
            right: 30,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kSmallVerticalSpacing,
                Text('Saver Stories:', style: bodyNormalText(context).copyWith(color: kSecondaryColor, fontSize: 22),),
                kTinyVerticalSpacing,
                Text('Meet the Ronvest', style: bodyNormalText(context).copyWith(fontSize:20),),
                kTinyVerticalSpacing,
                Text('Mega avers of 2022', style: bodyNormalText(context).copyWith(fontWeight: FontWeight.bold, fontSize:20),),
                kSmallVerticalSpacing,
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: size.width*0.5,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 0.3,
                      color: kSecondaryColor,
                    )

                  ),
                  child: Row(
                    children: [
                      Text('Watch Video', style: bodySmallText(context).copyWith(color: 
                      kSecondaryColor, fontWeight: FontWeight.bold),),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: kSecondaryColor
                          )
                        ),
                        child: Icon(Icons.play_arrow_outlined, size: 16, color: kSecondaryColor,),
                      )
                    ],
                  ),
                ),
                kMediumVerticalSpacing,
              ],
            ),
          ))
        ],
      ),
    );
  }
}










