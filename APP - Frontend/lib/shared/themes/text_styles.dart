import 'package:flutter/material.dart';

import 'app_colors.dart';

class TextStyles {
  //1
  static final profileTitle = TextStyle(
    color: AppColors.primaryDark,
    fontWeight: FontWeight.bold,
    fontFamily: 'gilroy-heavy',
    fontSize: 25,
  );
  static final profileSubtitle = TextStyle(
    color: AppColors.primaryDark,
    fontFamily: 'gilroy-heavy',
    fontSize: 20,
  );
  static final description = TextStyle(
    color: AppColors.primaryDark,
    fontFamily: 'gilroy-heavy',
    fontSize: 16,
  );
  static final sectionTitle = TextStyle(
    color: Colors.black87,
    fontFamily: 'gilroy-bold',
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static final sectionMore = TextStyle(
    color: AppColors.primaryRed,
    fontFamily: 'gilroy-bold',
    fontSize: 15,
  );
}
