import 'package:arkamaya_test/shared/constants/assets.dart';
import 'package:arkamaya_test/shared/constants/colors.dart';
import 'package:arkamaya_test/shared/widgets/menu_item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar(
      {Key? key, required this.selectedIndex, required this.onTap})
      : super(key: key);

  final Function(int index) onTap;
  final int selectedIndex;

  Widget _itemMenu(
    BuildContext context, {
    required Function() onTap,
    required String label,
    required bool isSelected,
    required String iconPrimary,
    required Color primaryColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 20.w,
            height: 20.w,
            // margin: EdgeInsets.only(bottom: Insets.xs),
            child: MenuItemImage(
              primaryIcon: iconPrimary,
              primaryColor:
                  isSelected ? primaryColor : AppColor.neutral.shade300,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected
                  ? AppColor.primaryColor
                  : AppColor.neutral.shade400,
              fontSize: 10,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: (60.w - 10.w),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFEBEBEB),
            spreadRadius: 0,
            blurRadius: 9,
            offset: Offset(0, -2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _itemMenu(
            context,
            onTap: () {
              onTap(0);
            },
            label: 'List Users'.tr,
            isSelected: selectedIndex == 0,
            iconPrimary: AppIcons.userList,
            primaryColor: selectedIndex == 0
                ? AppColor.primaryColor
                : AppColor.secondaryColor,
          ),
          _itemMenu(
            context,
            onTap: () {
              onTap(1);
            },
            label: 'Add New'.tr,
            isSelected: selectedIndex == 1,
            iconPrimary: AppIcons.userAdd,
            primaryColor: selectedIndex == 1
                ? AppColor.primaryColor
                : AppColor.secondaryColor,
          ),
          _itemMenu(
            context,
            onTap: () {
              onTap(2);
            },
            label: 'About'.tr,
            isSelected: selectedIndex == 2,
            iconPrimary: AppIcons.userAbout,
            primaryColor: selectedIndex == 2
                ? AppColor.primaryColor
                : AppColor.secondaryColor,
          ),
        ],
      ),
    );
  }
}
