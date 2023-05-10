import 'package:arkamaya_test/features/about/controller_about.dart';
import 'package:arkamaya_test/shared/constants/assets.dart';
import 'package:arkamaya_test/shared/constants/colors.dart';
import 'package:arkamaya_test/shared/constants/styles.dart';
import 'package:arkamaya_test/shared/widgets/loading_indicator.dart';
import 'package:arkamaya_test/shared/widgets/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PageAbout extends GetView<ControllerAbout> {
  const PageAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SizedBox(
                  height: 350.h,
                  width: Get.width,
                  child: Opacity(
                    opacity: 0.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90.w),
                        bottomRight: Radius.circular(90.w),
                      ),
                      child: Image.asset(
                        'assets/images/background.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: SizedBox(
                        height: 124,
                        width: 124,
                        child: Image.asset(
                          'assets/images/profile.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    verticalSpace(12.h),
                    Text(
                      'Muhammad Rizky Nur Fajrie',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s24,
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    verticalSpace(6.h),
                    Text(
                      'Flutter Developer',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s18,
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    verticalSpace(6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.pin_drop,
                          size: IconSizes.sm,
                          color: AppColor.whiteColor,
                        ),
                        horizontalSpace(4.w),
                        Text(
                          'Samarinda, Indonesia',
                          style: TextStyles.inter.copyWith(
                            fontSize: FontSizes.s12,
                            color: AppColor.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: Get.width,
                color: AppColor.whiteColor,
                padding: EdgeInsets.symmetric(
                  vertical: 24.h,
                  horizontal: 16.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'I am an Flutter Developer with holistic knowledge of mobile apps development. I am also experienced in coordinating with stakeholders.',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s14,
                        color: AppColor.neutral.shade800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ContactIcon(
                          imgUri: AppIcons.aboutWhatsapp,
                        ),
                        horizontalSpace(16.w),
                        const ContactIcon(
                          imgUri: AppIcons.aboutGmail,
                        ),
                        horizontalSpace(16.w),
                        const ContactIcon(
                          imgUri: AppIcons.aboutGithub,
                        ),
                      ],
                    ),
                    verticalSpace(16.h),
                    Text(
                      'SKILLS',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s16,
                        color: AppColor.neutral.shade900,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    verticalSpace(12.h),
                    Row(
                      children: const [
                        SkillsCard(skillsText: 'Dart'),
                        SkillsCard(skillsText: 'Flutter'),
                        SkillsCard(skillsText: 'Firebase'),
                        SkillsCard(skillsText: 'MySQL'),
                        SkillsCard(skillsText: 'Git'),
                      ],
                    ),
                    verticalSpace(12.h),
                    Row(
                      children: const [
                        SkillsCard(skillsText: 'Postman'),
                        SkillsCard(skillsText: 'Team Leadership'),
                      ],
                    ),
                    verticalSpace(16.h),
                    Text(
                      'LINKS',
                      style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s16,
                        color: AppColor.neutral.shade900,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    verticalSpace(16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ContactIcon(
                          imgUri: AppIcons.aboutLinkedin,
                          color: AppColor.secondaryColor,
                          iconColor: AppColor.whiteColor,
                        ),
                        horizontalSpace(32.w),
                        const ContactIcon(
                          imgUri: AppIcons.aboutInstagram,
                          color: AppColor.secondaryColor,
                          iconColor: AppColor.whiteColor,
                        ),
                        horizontalSpace(32.w),
                        const ContactIcon(
                          imgUri: AppIcons.aboutFacebook,
                          color: AppColor.secondaryColor,
                          iconColor: AppColor.whiteColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContactIcon extends StatelessWidget {
  const ContactIcon({
    super.key,
    required this.imgUri,
    this.onPressed,
    this.color,
    this.iconColor,
  });

  final String imgUri;
  final Function()? onPressed;
  final Color? color;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 32,
        width: 32,
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColor.neutral.shade300,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(90),
          ),
          color: color ?? AppColor.whiteColor,
        ),
        child: SvgPicture.asset(
          imgUri,
          fit: BoxFit.contain,
          color: iconColor ?? AppColor.primaryColor,
        ),
      ),
    );
  }
}

class SkillsCard extends StatelessWidget {
  const SkillsCard({
    super.key,
    required this.skillsText,
  });

  final String skillsText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      margin: EdgeInsets.only(right: 8.w),
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 6.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColor.secondaryColor,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(29.w),
        ),
        color: AppColor.whiteColor,
      ),
      child: Text(
        skillsText,
        style: TextStyles.inter.copyWith(
          fontSize: FontSizes.s14,
          color: AppColor.primaryColor,
        ),
      ),
    );
  }
}
