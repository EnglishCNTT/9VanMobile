import 'package:flutter/material.dart';
import 'package:human_interface/core/app_color.dart';

class HomeworkCard extends StatelessWidget {
  const HomeworkCard({super.key});

  @override
  Widget build(BuildContext context) {
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
        children: [
          
        ],
      ),
    );
  }
}
