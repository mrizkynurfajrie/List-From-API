import 'package:arkamaya_test/features/users/controller_users.dart';
import 'package:arkamaya_test/shared/constants/colors.dart';
import 'package:arkamaya_test/shared/constants/styles.dart';
import 'package:arkamaya_test/shared/widgets/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageDetailUsers extends GetView<ControllerUsers> {
  const PageDetailUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: '',
      toolbarColor: AppColor.primaryColor,
      toolbarTitleColor: AppColor.whiteColor,
      backgroundColor: AppColor.bgColor,
      enableBack: true,
      resizeAvoidBottom: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      center: Center(
        child: Text(
          'Single User',
          style: TextStyles.inter.copyWith(
            fontSize: FontSizes.s14,
            color: AppColor.whiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
