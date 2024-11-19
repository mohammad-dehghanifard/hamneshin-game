import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/dialog_body_widget.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/main_btn2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

part 'cheshmakmarg_state.dart';

class CheshmakmargCubit extends Cubit<RoleModel?> {
  CheshmakmargCubit() : super(null);

  final List<String> naghs = ["کارآگاه", "قاتل", "پوچ", "پوچ", "پوچ", "پوچ"];
  final List<String> naghsAssets = [
    "assets/images/png/cheshmakkaragah.png",
    "assets/images/png/cheshmakghatel.png",
    "assets/images/png/cheshmakpooch.png",
    "assets/images/png/cheshmakpooch.png",
    "assets/images/png/cheshmakpooch.png",
    "assets/images/png/cheshmakpooch.png",
  ];

  generateNaghshRandom(BuildContext context) {
    if (naghs.isNotEmpty && naghsAssets.isNotEmpty) {
      final randomIndex = Random().nextInt(naghs.length);
      final roleModel = RoleModel(
        role: naghs[randomIndex],
        assetPath: naghsAssets[randomIndex],
      );

      // حذف آیتم‌ها از لیست‌ها
      naghs.removeAt(randomIndex);
      naghsAssets.removeAt(randomIndex);

      emit(roleModel);

      print(roleModel.assetPath);
      print(roleModel.role);
    } else {
      print("تمام نقش‌ها انتخاب شده‌اند!");
      showDialog(
          context: context,
          builder: (context) => DialogBodyWidget(
                dialogBody: [
                  const Text(
                    textAlign: TextAlign.center,
                    "تمام تمام!",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.pelak,
                        color: UiColors.whiteColor,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: AppDistances.medium16.w * 2,
                    child: const Divider(
                      color: UiColors.whiteColor,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(height: AppDistances.small2.w),
                  const Text(
                    textAlign: TextAlign.center,
                    "تمامی نقش های بازی انتخاب شدند",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: FontFamily.pelak,
                        color: UiColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    Assets.images.png.selected.path,
                    scale: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainButton(btnText: "بازگشت به خانه", onPress: () {}),
                      SizedBox(width: AppDistances.small2.w),
                      MainButton2(
                        btnText: "شروع مجدد",
                        onPress: () {},
                      )
                    ],
                  ),
                  SizedBox(height: AppDistances.small2.w),
                ],
              ));
    }
  }

  hideCurrentRole() {
    emit(null); // ارسال مقدار null برای مخفی کردن نقش
  }
}

class RoleModel {
  final String role;
  final String assetPath;

  RoleModel({required this.role, required this.assetPath});
}
