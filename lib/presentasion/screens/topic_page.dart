import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:human_interface/core/app_icons.dart';
import 'package:human_interface/core/app_textstyle.dart';
import 'package:human_interface/presentasion/component/frame_app.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({super.key});

  @override
  State<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  bool isActive = true;
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
                    isActive = true;
                  });
                },
                child: Text(
                  "Kho đề chung".toUpperCase(),
                  style: isActive
                      ? AppTextStyle.text_base_semibold
                      : AppTextStyle.text_base_medium,
                )),
            SizedBox(
              width: 24,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isActive = false;
                });
              },
              child: Text(
                "Kho đề của tôi".toUpperCase(),
                style: !isActive
                    ? AppTextStyle.text_base_semibold
                    : AppTextStyle.text_base_medium,
              ),
            ),
          ],
        ),
        !isActive
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset(
                    AppIcons.addClass,
                    height: 36,
                  ),
                ),
              )
            : Container(),
        SvgPicture.asset(AppIcons.contentTopic),
      ],
    ));
  }
}
