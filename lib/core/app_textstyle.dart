import 'package:flutter/material.dart';

class AppTextStyle {
  static const _defaulTextStyle = TextStyle(
    fontStyle: FontStyle.normal,
    fontFamily: 'Inter',
    color: Colors.black,
  );

  static final text_base_semibold = _defaulTextStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static final text_base_medium = _defaulTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static final text_xs_medium = _defaulTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static final text_lg_medium = _defaulTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static final text_2xl_medium = _defaulTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );
}
