import 'package:flutter/material.dart';

class MyPageTopMenuItemData {
  const MyPageTopMenuItemData({
    required this.label,
    required this.icon,
    required this.iconBackgroundColor,
    this.labelColor,
  });

  final String label;
  final IconData icon;
  final Color iconBackgroundColor;
  final Color? labelColor;
}

const myPageTopName = 'ケンタロウ';
const myPageTopTrustScore = 98;
const myPageTopScoreQuality = 'High Quality';
const myPageTopScoreDescription = '高いスコアはマッチング率向上に繋がります';
const myPageTopVersion = 'GymBud v2.4.0';
const myPageTopFooterCaption = 'FITNESS MATCHING FOR SAME GENDER ONLY.';
