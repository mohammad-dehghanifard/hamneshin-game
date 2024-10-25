import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          right: AppDistances.large,
          left: AppDistances.large,
          bottom: AppDistances.small8),
      child: Container(
        height: size.height / 8.2,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [UiColors.darkBlueColor, UiColors.darkBlueColor2],
          ),
          borderRadius: BorderRadius.circular(AppDistances.medium12),
          border: Border.all(
            color: UiColors.darkBlueColor3, // رنگ بوردر
            width: 2.0, // ضخامت بوردر
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/png/darbare.png",
                      scale: 4.5,
                    ),
                    const Text(
                      "درباره ما",
                      style: TextStyle(
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/png/home.png",
                      scale: 4.5,
                    ),
                    const Text(
                      "خانه",
                      style: TextStyle(
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/png/rahnama.png",
                      scale: 4,
                    ),
                    const Text(
                      "راهنما",
                      style: TextStyle(
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}