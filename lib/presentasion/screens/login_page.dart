import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:human_interface/core/app_color.dart';
import 'package:human_interface/core/app_icons.dart';
import 'package:human_interface/core/app_textstyle.dart';
import 'package:human_interface/presentasion/bottom_navbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green_100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcons.logo9Van,
                  height: 40,
                ),
                Text(
                  'Luyện viết văn hay',
                  style: AppTextStyle.text_2xl_medium.copyWith(
                    color: AppColors.green_600,
                  ),
                ),
                Text(
                  'Chấm bài thông minh',
                  style: AppTextStyle.text_2xl_medium.copyWith(
                    color: AppColors.green_600,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Chào mừng bạn đến với 9Văn',
                    style: AppTextStyle.text_lg_medium.copyWith(
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavBar(),
                            ),
                          );
                        },
                        child: SvgPicture.asset(AppIcons.googleSignIn)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBar(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(AppIcons.fbSignIn),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'Giới thiệu',
                  style: AppTextStyle.text_lg_medium.copyWith(
                    color: AppColors.green_600,
                  ),
                ),
                Text(
                  'Chính sách & Điều khoản',
                  style: AppTextStyle.text_lg_medium.copyWith(
                    color: AppColors.green_600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
