import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview/presentation/resources/app_colors.dart';

class HomeBox{
  final String name;
  final String desc;
  final Color iconColor;
  final Color boxColor;

  HomeBox({required this.name, required this.desc, required this.iconColor,  required this.boxColor});
}

List<HomeBox> slideList = [
  HomeBox(name: "Regular", desc: "Flexible savings. Save automatically, daily, weekly, monthly, up to  12.5% p.a", iconColor: kTextFieldFillColor, boxColor: HexColor("#B3E0F5")),
  HomeBox(name: "Vault", desc: "Lock funds for a period of time, minimum of 1months. Returns up to 12.5% p.a", iconColor: kTextColor, boxColor: kTextFieldFillColor),
  HomeBox(name: "Goal", desc: "Create, explore and smash your goals. Returns up to  12.5% p.a", iconColor: HexColor("#1CBC31").withOpacity(0.5), boxColor: HexColor("#1CBC31").withOpacity(0.13)),
];