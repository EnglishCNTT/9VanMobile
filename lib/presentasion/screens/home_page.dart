import 'package:flutter/material.dart';
import 'package:human_interface/core/app_textstyle.dart';
import 'package:human_interface/presentasion/component/home_card.dart';
import 'package:human_interface/presentasion/component/frame_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FrameApp(
      contentScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tổng quan các lớp đang hoạt động'.toUpperCase(),
            style: AppTextStyle.text_base_medium,
          ),
          SizedBox(
            height: 8,
          ),
          HomeCard(),
          HomeCard(),
          HomeCard(),
          HomeCard(),
        ],
      ),
    );
  }
}
