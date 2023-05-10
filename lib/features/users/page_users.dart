import 'dart:ffi';

import 'package:arkamaya_test/features/users/controller_users.dart';
import 'package:arkamaya_test/response/users.dart';
import 'package:arkamaya_test/routes/app_routes.dart';
import 'package:arkamaya_test/shared/constants/colors.dart';
import 'package:arkamaya_test/shared/constants/styles.dart';
import 'package:arkamaya_test/shared/widgets/button_primary.dart';
import 'package:arkamaya_test/shared/widgets/loading_indicator.dart';
import 'package:arkamaya_test/shared/widgets/page_decoration_top.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageUsers extends GetView<ControllerUsers> {
  const PageUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: '',
      toolbarColor: AppColor.primaryColor,
      toolbarTitleColor: AppColor.whiteColor,
      backgroundColor: AppColor.bgColor,
      resizeAvoidBottom: true,
      enableBack: false,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      center: Center(
        child: Text(
          'LIST USERS',
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
            () => controller.loading.isFalse
                ? SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                if (controller.pages.value ==
                                    controller.totalPages.value) {
                                  controller.pages.value =
                                      controller.pages.value - 1;
                                  await controller.getUsers();
                                } else {}
                              },
                              child: Container(
                                height: 32.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(90),
                                  ),
                                  border: Border.all(
                                    color: AppColor.secondaryColor,
                                  ),
                                  color: AppColor.neutral.shade100,
                                ),
                                child: Icon(
                                  CupertinoIcons.back,
                                  color: controller.pages.value ==
                                          controller.totalPages.value
                                      ? AppColor.primaryColor
                                      : AppColor.neutral.shade600,
                                  size: IconSizes.sm,
                                ),
                              ),
                            ),
                            horizontalSpace(12.w),
                            GestureDetector(
                              onTap: () async {
                                if (controller.pages.value <
                                    controller.totalPages.value) {
                                  controller.pages.value =
                                      controller.pages.value + 1;
                                  await controller.getUsers();
                                } else {}
                              },
                              child: Container(
                                height: 32.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(90),
                                  ),
                                  border: Border.all(
                                    color: AppColor.secondaryColor,
                                  ),
                                  color: AppColor.neutral.shade100,
                                ),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: controller.pages.value <
                                          controller.totalPages.value
                                      ? AppColor.primaryColor
                                      : AppColor.neutral.shade600,
                                  size: IconSizes.sm,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.h),
                          child: const Divider(
                            thickness: 1,
                            color: AppColor.secondaryColor,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: controller.listUsers.length,
                            itemBuilder: ((context, index) => CardItem(
                                  users: controller.listUsers[index],
                                )),
                          ),
                        ),
                        verticalSpace(30.h)
                      ],
                    ),
                  )
                : loadingIndicator(context),
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.users});

  final Users users;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.detail, arguments: users.id);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
        height: 120,
        width: 80,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: AppColor.whiteColor,
          boxShadow: Shadows.shadowsUp,
        ),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: users.avatar!,
              progressIndicatorBuilder: (context, url, progress) =>
                  const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                size: 24,
                color: Colors.red,
              ),
              fit: BoxFit.contain,
            ),
            horizontalSpace(12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${users.firstName!} ${users.lastName!}',
                  style: TextStyles.inter.copyWith(
                    fontSize: FontSizes.s20,
                    color: AppColor.neutral.shade800,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  users.email!,
                  style: TextStyles.inter.copyWith(
                    fontSize: FontSizes.s14,
                    color: AppColor.neutral.shade700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
