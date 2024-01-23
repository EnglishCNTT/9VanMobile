import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:human_interface/core/app_icons.dart';
import 'package:human_interface/core/app_textstyle.dart';
import 'package:human_interface/presentasion/component/class_card.dart';
import 'package:human_interface/presentasion/component/frame_app.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return FrameApp(
      contentScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                    "Đang hoạt động".toUpperCase(),
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
                    "Đang kết thúc".toUpperCase(),
                    style: !isActive
                        ? AppTextStyle.text_base_semibold
                        : AppTextStyle.text_base_medium,
                  )),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          isActive
              ? Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset(
                    AppIcons.addClass,
                    height: 36,
                  ),
                )
              : Container(),
          SizedBox(
            height: 16,
          ),
          ClassCard(
            isActive: isActive,
          ),
          ClassCard(
            isActive: isActive,
          ),
          ClassCard(
            isActive: isActive,
          ),
          ClassCard(
            isActive: isActive,
          ),
        ],
      ),
    );
  }
}
