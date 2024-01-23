import 'package:flutter/material.dart';
import 'package:human_interface/presentasion/component/app_bar.dart';

class FrameApp extends StatelessWidget {
  final contentScreen;
  const FrameApp({super.key, this.contentScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    contentScreen,
                  ],
                ),
              ),
              AppBarCustom(),
            ],
          ),
        ),
      ),
    );
  }
}
