import 'package:arkamaya_test/features/create_users/controller_create_users.dart';
import 'package:arkamaya_test/shared/constants/colors.dart';
import 'package:arkamaya_test/shared/constants/styles.dart';
import 'package:arkamaya_test/shared/widgets/button_primary.dart';
import 'package:arkamaya_test/shared/widgets/input_primary.dart';
import 'package:arkamaya_test/shared/widgets/loading_indicator.dart';
import 'package:arkamaya_test/shared/widgets/page_decoration_top.dart';
import 'package:arkamaya_test/shared/widgets/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageCreateUsers extends GetView<ControllerCreateUsers> {
  const PageCreateUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: '',
      toolbarColor: AppColor.primaryColor,
      toolbarTitleColor: AppColor.whiteColor,
      backgroundColor: AppColor.bgColor,
      enableBack: false,
      resizeAvoidBottom: false,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      center: Center(
        child: Text(
          'CREATE',
          style: TextStyles.inter.copyWith(
            fontSize: FontSizes.s14,
            color: AppColor.whiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      child: SafeArea(
        child: Obx(() => Column(
              children: [
                InputPrimary(
                  controller: controller.textName,
                  label: 'Name',
                  hintText: 'Enter your name',
                  onTap: () {},
                  margin: EdgeInsets.only(top: 6.h),
                ),
                verticalSpace(12.h),
                InputPrimary(
                  controller: controller.textJob,
                  label: 'Job',
                  hintText: 'Enter your job',
                  onTap: () {},
                  margin: EdgeInsets.only(top: 6.h),
                ),
                verticalSpace(32.h),
                controller.loading.isFalse
                    ? ButtonPrimary(
                        onPressed: () {
                          if (controller.textName.text != '' &&
                              controller.textJob.text != '') {
                            controller.createUsers();
                          } else {
                            showPopUp(
                              title: 'Warning!',
                              description:
                                  "Action can't be completed, all field must be filled",
                              imageUri: Icons.error,
                            );
                          }
                        },
                        label: 'Save',
                        height: 42.h,
                        size: 345.w,
                        cornerRadius: Corners.lg,
                      )
                    : loadingIndicator(context),
                const Spacer(),
                controller.createdStatus.value == true
                    ? Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 12.h,
                          horizontal: 12.w,
                        ),
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6.w)),
                          border: Border.all(
                            width: 1,
                            color: AppColor.neutral.shade400,
                          ),
                          color: AppColor.boxSuccessColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Data has been created :',
                              style: TextStyles.inter.copyWith(
                                fontSize: FontSizes.s12,
                                color: AppColor.neutral,
                              ),
                            ),
                            verticalSpace(6.h),
                            RichText(
                              text: TextSpan(
                                text: 'ID : ',
                                style: TextStyles.inter.copyWith(
                                  fontSize: FontSizes.s12,
                                  color: AppColor.neutral,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: controller.newUser.value.id ?? '',
                                    style: TextStyles.inter.copyWith(
                                      fontSize: FontSizes.s12,
                                      color: AppColor.neutral,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            verticalSpace(6.h),
                            RichText(
                              text: TextSpan(
                                text: 'createdAt : ',
                                style: TextStyles.inter.copyWith(
                                  fontSize: FontSizes.s12,
                                  color: AppColor.neutral,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: controller.newUser.value.createdAt
                                        .toString(),
                                    style: TextStyles.inter.copyWith(
                                      fontSize: FontSizes.s12,
                                      color: AppColor.neutral,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(),
              ],
            )),
      ),
    );
  }
}
