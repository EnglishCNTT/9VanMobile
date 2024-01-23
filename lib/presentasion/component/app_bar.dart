import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:human_interface/core/app_color.dart';
import 'package:human_interface/core/app_icons.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppIcons.logo9Van,
            height: 32,
          ),
          Container(
            height: 24,
            child: Row(
              children: [
                SvgPicture.asset(
                  AppIcons.bellActive,
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'A',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
