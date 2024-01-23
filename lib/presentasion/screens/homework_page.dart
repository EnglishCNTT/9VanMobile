import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:human_interface/core/app_icons.dart';
import 'package:human_interface/core/app_textstyle.dart';
import 'package:human_interface/presentasion/component/frame_app.dart';

class HomeworkPage extends StatefulWidget {
  const HomeworkPage({super.key});

  @override
  State<HomeworkPage> createState() => _HomeworkPageState();
}

class _HomeworkPageState extends State<HomeworkPage> {
  int isSelected = 1;
  @override
  Widget build(BuildContext context) {
    return FrameApp(
        contentScreen: Column(
      children: [
        Row(
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    isSelected = 1;
                  });
                },
                child: Text(
                  "Chờ chấm".toUpperCase(),
                  style: isSelected == 1
                      ? AppTextStyle.text_base_semibold
                      : AppTextStyle.text_base_medium,
                )),
            SizedBox(
              width: 24,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isSelected = 2;
                });
              },
              child: Text(
                "Đã giao".toUpperCase(),
                style: isSelected == 2
                    ? AppTextStyle.text_base_semibold
                    : AppTextStyle.text_base_medium,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isSelected = 3;
                });
              },
              child: Text(
                "Đã chấm".toUpperCase(),
                style: isSelected == 3
                    ? AppTextStyle.text_base_semibold
                    : AppTextStyle.text_base_medium,
              ),
            ),
          ],
        ),
        isSelected == 1
            ? Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  SvgPicture.asset(AppIcons.contentHomeworkPage),
                  SizedBox(
                    height: 12,
                  ),
                  SvgPicture.asset(AppIcons.contentHomeworkPage),
                ],
              )
            : Column(children: [
                SizedBox(
                  height: 12,
                ),
                SvgPicture.asset(AppIcons.assignedHomework),
                SizedBox(
                  height: 12,
                ),
                SvgPicture.asset(AppIcons.assignedHomework),
              ])
      ],
    ));
  }
}
