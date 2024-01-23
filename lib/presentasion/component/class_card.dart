import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:human_interface/core/app_color.dart';
import 'package:human_interface/core/app_icons.dart';
import 'package:human_interface/core/app_textstyle.dart';

class ClassCard extends StatelessWidget {
  final isActive;
  const ClassCard({super.key, this.isActive});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = AppTextStyle.text_base_semibold;
    return Container(
      height: 168,
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
            "Mô tả: Lớp luyện văn ôn thi vào 10",
            style: textStyle,
          ),
          Text(
            "Năm 2024",
            style: textStyle,
          ),
          Text(
            "Lớp: 9A1 - Văn giáo viên Phan Huy Thai",
            style: textStyle,
          ),
          Divider(
            color: AppColors.green,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isActive ? Row(
                children: [
                  SvgPicture.asset(AppIcons.linkButton),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(AppIcons.editButton),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(AppIcons.closeButton),
                ],
              ) : Container(),
              SizedBox(
                width: 8,
              ),
              SvgPicture.asset(AppIcons.removeButton),
            ],
          )
        ],
      ),
    );
  }
}
