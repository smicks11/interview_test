import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconModel{
  final String text;
  final String icon;

  IconModel({required this.text, required this.icon});
}

List<IconModel> icons = [
  IconModel(text: "TOP UP", icon: 'assets/svg/Path 32.svg'),
  IconModel(text: "PLANS", icon: 'assets/svg/Compound Path.svg'),
  IconModel(text: "CHALLENGE", icon: 'assets/svg/md-trophy.svg'),
  IconModel(text: "WALLET", icon: 'assets/svg/Path 34.svg'),
  IconModel(text: "PORTFOLIO", icon: 'assets/svg/Path 1547.svg'),
];