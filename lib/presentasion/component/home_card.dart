import 'package:flutter/material.dart';
import 'package:human_interface/core/app_color.dart';
import 'package:human_interface/core/app_textstyle.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = AppTextStyle.text_base_semibold;
    return Container(
      height: 176,
      width: 360,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.green, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lớp: Lớp 9A1 - Văn giáo viên Phan Huy Thai",
            style: textStyle,
          ),
          Text(
            "Chờ chấm: 1",
            style: textStyle,
          ),
          Text(
            "Đã chấm: 1",
            style: textStyle,
          ),
          Text(
            "Đã giao: 10",
            style: textStyle,
          ),
          Row(
            children: [
              Text(
                "Tỉ lệ làm bài:",
                style: textStyle,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "100%",
                    style: AppTextStyle.text_xs_medium,
                  ),
                  Container(
                      width: 220,
                      height: 6,
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(8),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
