import 'package:arkamaya_test/features/detail/controller_detail_users.dart';
import 'package:arkamaya_test/shared/constants/colors.dart';
import 'package:arkamaya_test/shared/constants/styles.dart';
import 'package:arkamaya_test/shared/widgets/loading_indicator.dart';
import 'package:arkamaya_test/shared/widgets/page_decoration_top.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageDetailUsers extends GetView<ControllerDetailUsers> {
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
      center: Padding(
        padding: EdgeInsets.only(left: 92.w),
        child: Text(
          'SINGLE USER',
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
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 6.h),
                        height: 120,
                        width: Get.width,
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)),
                          color: AppColor.whiteColor,
                          boxShadow: Shadows.shadowsUp,
                        ),
                        child: Row(
                          children: [
                            CachedNetworkImage(
                              imageUrl: controller.detailUsers.value.avatar!,
                              progressIndicatorBuilder:
                                  (context, url, progress) => const Center(
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
                                  '${controller.detailUsers.value.firstName!} ${controller.detailUsers.value.lastName!}',
                                  style: TextStyles.inter.copyWith(
                                    fontSize: FontSizes.s20,
                                    color: AppColor.neutral.shade800,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  controller.detailUsers.value.email!,
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.h, horizontal: 8.w),
                        child: Divider(
                          thickness: 1,
                          color: AppColor.neutral.shade200,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Support',
                            style: TextStyles.inter.copyWith(
                              fontSize: FontSizes.s20,
                              color: AppColor.neutral.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(8.h),
                          Text(
                            controller.support.value,
                            style: TextStyles.inter.copyWith(
                              fontSize: FontSizes.s16,
                              color: AppColor.neutral,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : loadingIndicator(context),
          ),
        ),
      ),
    );
  }
}
