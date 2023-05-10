import 'package:arkamaya_test/shared/constants/colors.dart';
import 'package:arkamaya_test/shared/helpers/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BorderStyles {
  static Border borderGrey =
      Border.all(color: Colors.grey.withOpacity(0.4), width: 1.5);

  static OutlineInputBorder enableTextField = OutlineInputBorder(
    borderSide:
        BorderSide(color: AppColor.neutral.shade300, width: Strokes.xthin),
    borderRadius: Corners.lgBorder,
  );

  static OutlineInputBorder focusTextField = OutlineInputBorder(
    borderSide:
        const BorderSide(color: AppColor.primaryColor, width: Strokes.thin),
    borderRadius: Corners.lgBorder,
  );

  static OutlineInputBorder disableTextField = OutlineInputBorder(
    borderSide:
        BorderSide(color: AppColor.neutral.shade300, width: Strokes.xthin),
    borderRadius: Corners.lgBorder,
  );

  static OutlineInputBorder registerOutline = OutlineInputBorder(
    borderSide:
        BorderSide(color: AppColor.neutral.shade100, width: Strokes.xthin),
    borderRadius: BorderRadius.all(Radius.circular(12.w)),
  );

  static OutlineInputBorder errorTextField = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColor.error, width: Strokes.thin),
    borderRadius: Corners.lgBorder,
  );
}

InputDecoration inputDecoration({
  required String hintText,
  Widget? prefixIcon,
  Widget? suffixIcon,
  FontStyle? fontStyle,
  InputBorder? enabledBorder,
  InputBorder? focusedBorder,
  InputBorder? errorBorder,
  EdgeInsets? contentPadding,
  Color? color,
  TextStyle? hintStyles,
  InputBorder? border,
}) {
  return InputDecoration(
    isDense: true,
    filled: true,
    fillColor: color ?? Colors.white,
    contentPadding: contentPadding ??
        EdgeInsets.symmetric(horizontal: Insets.sm, vertical: Insets.med),
    hintText: hintText,
    border: border ?? BorderStyles.disableTextField,
    focusedBorder: focusedBorder ?? BorderStyles.focusTextField,
    enabledBorder: enabledBorder ?? BorderStyles.enableTextField,
    errorBorder: errorBorder ?? BorderStyles.errorTextField,
    disabledBorder: BorderStyles.disableTextField,
    errorMaxLines: 5,
    prefixIcon: prefixIcon,
    prefixIconConstraints:
        BoxConstraints(minHeight: Sizes.lg, minWidth: Sizes.lg),
    suffixIconConstraints:
        BoxConstraints(minHeight: Sizes.med, minWidth: Sizes.med),
    suffixIcon: suffixIcon,
    hintStyle: hintStyles ??
        TextStyles.inter.copyWith(
          fontSize: FontSizes.s4,
          fontWeight: FontWeight.normal,
          color: AppColor.neutral.shade400,
          fontStyle: fontStyle ?? FontStyle.normal,
        ),
  );
}

Widget verticalSpace(double v) {
  return SizedBox(height: v);
}

Widget horizontalSpace(double v) {
  return SizedBox(width: v);
}

/// Used for all animations in the  app
class Times {
  static const Duration fastest = Duration(milliseconds: 150);
  static const fast = Duration(milliseconds: 250);
  static const medium = Duration(milliseconds: 350);
  static const slow = Duration(milliseconds: 700);
  static const slower = Duration(milliseconds: 1000);
}

class Sizes {
  static double get xs => 8.w;
  static double get sm => 12.w;
  static double get smmed => 16.w;
  static double get med => 20.w;
  static double get lg => 32.w;
  static double get xl => 48.w;
  static double get xxl => 80.w;
}

class IconSizes {
  static double get genderIcon => 10.w;
  static double get xs => 12.w;
  static double get sm => 16.w;
  static double get arrowDown => 20.w;
  static double get add => 18.w;
  static double get med => 24.w;
  static double get medx => 28.w;
  static double get adm => 31.w;
  static double get lg => 32.w;
  static double get listuser => 38.w;
  static double get menu => 40.w;
  static double get xl => 48.w;
  static double get xxl => 60.w;
  static double get profPictSet => 64.w;
  static double get profPict => 48.w;
  static double get xxxl => 96.w;
  static double get popup => 173.w;
}

class Insets {
  static double get arrow => 17.w;
  static double offsetScale = 1;
  static double get xs => 4.w;
  static double get sm => 10.w;
  static double get med => 14.w;
  static double get lg => 16.w;
  static double get xl => 20.w;
  static double get icMenu => 24.w;
  static double get xxl => 32.w;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class Corners {
  static double sm = 3.w;
  static BorderRadius smBorder = BorderRadius.all(smRadius);
  static Radius smRadius = Radius.circular(sm);

  static double med = 5.w;
  static BorderRadius medBorder = BorderRadius.all(medRadius);
  static Radius medRadius = Radius.circular(med);

  static double lg = 8.w;
  static BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static Radius lgRadius = Radius.circular(lg);

  static double lgOrderHistory = 12.w;
  static BorderRadius lgOrderHistoryBorder =
      BorderRadius.all(lgOrderHistoryRadius);
  static Radius lgOrderHistoryRadius = Radius.circular(lgOrderHistory);

  static double xl = 16.w;
  static BorderRadius xlBorder = BorderRadius.all(xlRadius);
  static Radius xlRadius = Radius.circular(xl);

  static double xxl = 24.w;
  static BorderRadius xxlBorder = BorderRadius.all(xxlRadius);
  static Radius xxlRadius = Radius.circular(xxl);
}

class Strokes {
  static const double xthin = 0.7;
  static const double thin = 1;
  static const double med = 2;
  static const double thick = 4;
}

class Shadows {
  // BOTTOM
  static List<BoxShadow> get xsBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.05),
          offset: const Offset(0, 1),
          blurRadius: 2,
        )
      ];
  static List<BoxShadow> get smBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.1),
          offset: const Offset(0, 1),
          blurRadius: 3,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.06),
          offset: const Offset(0, 1),
          blurRadius: 2,
        ),
      ];
  static List<BoxShadow> get mdBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.1),
          offset: const Offset(0, 4),
          blurRadius: 8,
          spreadRadius: -2,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.06),
          offset: const Offset(0, 2),
          blurRadius: 4,
          spreadRadius: -2,
        ),
      ];
  static List<BoxShadow> get lgBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.08),
          offset: const Offset(0, 12),
          blurRadius: 16,
          spreadRadius: -4,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.03),
          offset: const Offset(0, 4),
          blurRadius: 6,
          spreadRadius: -2,
        ),
      ];
  static List<BoxShadow> get xlBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.08),
          offset: const Offset(0, 20),
          blurRadius: 24,
          spreadRadius: -4,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.03),
          offset: const Offset(0, 8),
          blurRadius: 8,
          spreadRadius: -4,
        ),
      ];
  static List<BoxShadow> get xl2Bottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.18),
          offset: const Offset(0, 24),
          blurRadius: 28,
          spreadRadius: -12,
        ),
      ];
  static List<BoxShadow> get xl3Bottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.14),
          offset: const Offset(0, 32),
          blurRadius: 64,
          spreadRadius: -12,
        ),
      ];
  // TOP
  static List<BoxShadow> get xsTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.05),
          offset: const Offset(0, -1),
          blurRadius: 2,
        )
      ];
  static List<BoxShadow> get smTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.1),
          offset: const Offset(0, -1),
          blurRadius: 3,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.06),
          offset: const Offset(0, 1),
          blurRadius: 2,
        ),
      ];
  static List<BoxShadow> get mdTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.1),
          offset: const Offset(0, 4),
          blurRadius: 8,
          spreadRadius: -2,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.06),
          offset: const Offset(0, -2),
          blurRadius: 4,
          spreadRadius: -2,
        ),
      ];
  static List<BoxShadow> get lgTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.08),
          offset: const Offset(0, -12),
          blurRadius: 16,
          spreadRadius: -4,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.03),
          offset: const Offset(0, -4),
          blurRadius: 6,
          spreadRadius: -2,
        ),
      ];
  static List<BoxShadow> get xlTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.08),
          offset: const Offset(0, -20),
          blurRadius: 24,
          spreadRadius: -4,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.03),
          offset: const Offset(0, -8),
          blurRadius: 8,
          spreadRadius: -4,
        ),
      ];
  static List<BoxShadow> get xl2Top => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.18),
          offset: const Offset(0, -24),
          blurRadius: 28,
          spreadRadius: -12,
        ),
      ];
  static List<BoxShadow> get xl3Top => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.14),
          offset: const Offset(0, -32),
          blurRadius: 64,
          spreadRadius: -12,
        ),
      ];
  static List<BoxShadow> get none => [
        const BoxShadow(
            color: AppColor.whiteColor,
            spreadRadius: 0,
            blurRadius: 0,
            offset: Offset(0, 0)),
      ];

  static List<BoxShadow> get universal => [
        BoxShadow(
            color: const Color(0xff333333).withOpacity(.13),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 5)),
      ];
  static List<BoxShadow> get small => [
        BoxShadow(
            color: const Color(0xff333333).withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 1)),
      ];

  static List<BoxShadow> get menu => [
        BoxShadow(
            color: const Color(0xFF000000).withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 4)),
      ];
  static List<BoxShadow> get shadowsUp => [
        BoxShadow(
            color: const Color(0xff333333).withOpacity(.15),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(-1, 0)),
      ];
}

/// Font Sizes
/// You can use these directly if you need, but usually there should be a predefined style in TextStyles.
class FontSizes {
  /// Provides the ability to nudge the app-wide font scale in either direction
  static double get s4 => 4.w;
  static double get s6 => 6.w;
  static double get s8 => 8.w;
  static double get s9 => 9.w;
  static double get s10 => 10.w;
  static double get s11 => 11.w;
  static double get s12 => 12.w;
  static double get s14 => 14.w;
  static double get s16 => 16.w;
  static double get s18 => 18.w;
  static double get s20 => 20.w;
  static double get s24 => 24.w;
  static double get s26 => 26.w;
  static double get s28 => 28.w;
  static double get s30 => 30.w;
  static double get s32 => 32.w;
  static double get s36 => 36.w;
  static double get s40 => 40.w;
  static double get s48 => 48.w;
  static double get s56 => 56.w;
  static double get s60 => 60.w;
  static double get s72 => 72.w;
}

/// Fonts - A list of Font Families, this is uses by the TextStyles class to create concrete styles.

/// TextStyles - All the core text styles for the app should be declared here.
/// Don't try and create every variant in existence here, just the high level ones.
/// More specific variants can be created on the fly using `style.copyWith()`
/// `newStyle = TextStyles.body1.copyWith(lineHeight: 2, color: Colors.red)`
class TextStyles {
  /// Declare a base style for each Family
  static const TextStyle inter =
      TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Inter');

  static TextStyle get h1 => inter.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s56,
      letterSpacing: -1,
      height: 1.17);
  static TextStyle get h2 =>
      h1.copyWith(fontSize: FontSizes.s40, letterSpacing: -.5, height: 1.16);
  static TextStyle get h3 => h1.copyWith(
        fontSize: FontSizes.s32,
        letterSpacing: -.05,
        height: 1.29,
      );
  static TextStyle get h4 => h1.copyWith(fontSize: FontSizes.s26);
  static TextStyle get h5 => h1.copyWith(fontSize: FontSizes.s20);
  static TextStyle get h6 => h3.copyWith(fontSize: FontSizes.s18);

  // Old style text
  static TextStyle get text2xs => inter.copyWith(fontSize: FontSizes.s10);
  static TextStyle get textBase => inter.copyWith(fontSize: FontSizes.s16);
  static TextStyle get textBaseBold =>
      textBase.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get text2Base => inter.copyWith(fontSize: FontSizes.s18);
  static TextStyle get text2BaseBold =>
      text2Base.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get text2xl => inter.copyWith(fontSize: FontSizes.s32);
  static TextStyle get text2xlBold =>
      text2xl.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get text3xl => inter.copyWith(fontSize: FontSizes.s40);
  static TextStyle get text3xlBold =>
      text3xl.copyWith(fontWeight: FontWeight.w700);
  // End old style text

  static TextStyle get textApiLog1 => inter.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s12,
      height: 1.17,
      letterSpacing: .5);
  static TextStyle get textApiLog2 => textApiLog1.copyWith(
      fontSize: FontSizes.s10, height: 1, letterSpacing: .25);
  static TextStyle get textApiLog3 => textApiLog1.copyWith(
      fontSize: FontSizes.s9, height: 1, letterSpacing: .25);

  // Text
  static TextStyle get textXxs => inter.copyWith(
        fontSize: FontSizes.s10,
        height: 16.0.toFigmaHeight(FontSizes.s10),
      );
  static TextStyle get textXxsMed =>
      textXxs.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get textXxsSemiBold =>
      textXxs.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get textXxsBold =>
      textXxs.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get textXs => inter.copyWith(
        fontSize: FontSizes.s12,
        height: 18.0.toFigmaHeight(FontSizes.s12),
      );
  static TextStyle get textXsMed =>
      textXs.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get textXsSemiBold =>
      textXs.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get textXsBold =>
      textXs.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get textSm => inter.copyWith(
        fontSize: FontSizes.s14,
        height: 20.0.toFigmaHeight(FontSizes.s14),
      );
  static TextStyle get textSmMed =>
      textSm.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get textSmSemiBold =>
      textSm.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get textSmBold =>
      textSm.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get textMd => inter.copyWith(
        fontSize: FontSizes.s16,
        height: 24.0.toFigmaHeight(FontSizes.s16),
      );
  static TextStyle get textMdMed =>
      textMd.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get textMdSemiBold =>
      textMd.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get textMdBold =>
      textMd.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get textLg => inter.copyWith(
        fontSize: FontSizes.s18,
        height: 28.0.toFigmaHeight(FontSizes.s18),
      );
  static TextStyle get textLgMed =>
      textLg.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get textLgSemiBold =>
      textLg.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get textLgBold =>
      textLg.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get textXl => inter.copyWith(
        fontSize: FontSizes.s20,
        height: 30.0.toFigmaHeight(FontSizes.s20),
      );
  static TextStyle get textXlMed =>
      textXl.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get textXlSemiBold =>
      textXl.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get textXlBold =>
      textXl.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get subtitle1 => inter.copyWith(
      fontWeight: FontWeight.bold, fontSize: FontSizes.s16, height: 1.31);
  static TextStyle get subtitle2 => subtitle1.copyWith(
      fontWeight: FontWeight.w700, fontSize: FontSizes.s14, height: 1.36);
  static TextStyle get subtitle3 => inter.copyWith(
      fontWeight: FontWeight.normal, fontSize: FontSizes.s14, height: 1.31);
  static TextStyle get body1 => inter.copyWith(
      fontWeight: FontWeight.normal, fontSize: FontSizes.s16, height: 1.71);
  static TextStyle get body2 =>
      body1.copyWith(fontSize: FontSizes.s12, height: 1.5, letterSpacing: .2);
  static TextStyle get body3 => inter.copyWith(
      fontSize: FontSizes.s12,
      fontWeight: FontWeight.w400,
      height: 1.5,
      letterSpacing: .2);
  static TextStyle get small1 => inter.copyWith(
        fontSize: FontSizes.s12,
        fontWeight: FontWeight.normal,
        height: 1.15,
      );
  static TextStyle get small2 => inter.copyWith(
      fontSize: FontSizes.s10, fontWeight: FontWeight.normal, height: 1.2);
  static TextStyle get callout1 => inter.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s12,
      height: 1.17,
      letterSpacing: .5);
  static TextStyle get button => inter.copyWith(
      fontWeight: FontWeight.bold, fontSize: FontSizes.s14, height: 1.71);
  static TextStyle get titleSmBold => inter.copyWith(
        fontSize: FontSizes.s18,
        fontWeight: FontWeight.w600,
      );

  // display
  static TextStyle get displayXs => inter.copyWith(
        fontSize: FontSizes.s24,
        height: 32.0.toFigmaHeight(FontSizes.s24),
      );
  static TextStyle get displayXsMed =>
      displayXs.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get displayXsSemiBold =>
      displayXs.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get displayXsBold =>
      displayXs.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get displaySm => inter.copyWith(
        fontSize: FontSizes.s30,
        height: 38.0.toFigmaHeight(FontSizes.s30),
      );
  static TextStyle get displaySmMed =>
      displaySm.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get displaySmSemiBold =>
      displaySm.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get displaySmBold =>
      displaySm.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get displayMd => inter.copyWith(
        fontSize: FontSizes.s36,
        height: 44.0.toFigmaHeight(FontSizes.s36),
        letterSpacing: -2,
      );
  static TextStyle get displayMdMed =>
      displayMd.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get displayMdSemiBold =>
      displayMd.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get displayMdBold =>
      displayMd.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get displayLg => inter.copyWith(
        fontSize: FontSizes.s48,
        height: 72.0.toFigmaHeight(FontSizes.s48),
        letterSpacing: -2,
      );
  static TextStyle get displayLgMed =>
      displayLg.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get displayLgSemiBold =>
      displayLg.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get displayLgBold =>
      displayLg.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get displayXl => inter.copyWith(
        fontSize: FontSizes.s60,
        height: 72.0.toFigmaHeight(FontSizes.s60),
        letterSpacing: -2,
      );
  static TextStyle get displayXlMed =>
      displayXl.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get displayXlSemiBold =>
      displayXl.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get displayXlBold =>
      displayXl.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get displayXxl => inter.copyWith(
        fontSize: FontSizes.s72,
        height: 90.0.toFigmaHeight(FontSizes.s72),
        letterSpacing: -2,
      );
  static TextStyle get displayXxlMed =>
      displayXxl.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get displayXxlSemiBold =>
      displayXxl.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get displayXxlBold =>
      displayXxl.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get errorTextInput => textSm.copyWith(
        color: AppColor.error.shade600,
      );
}

class Borders {
  static const BorderSide universalBorder = BorderSide(
    color: AppColor.whiteColor,
    width: 1,
  );

  static const BorderSide smallBorder = BorderSide(
    color: AppColor.whiteColor,
    width: 0.5,
  );

  static BoxDecoration borderPin({
    Color? borderColor,
    double? strokeWidth,
  }) {
    return BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: Corners.lgBorder,
        border: Border.all(
          width: strokeWidth ?? Strokes.xthin,
          color: borderColor ?? AppColor.whiteColor,
        ));
  }
}

ThemeData appTheme(hexColor) {
  return ThemeData(
    platform: TargetPlatform.android,
    brightness: Brightness.light,
    primaryColor: MaterialColor(hexColor, AppColor.color),
    primarySwatch: MaterialColor(hexColor, AppColor.color),
    fontFamily: 'Inter',
  );
}
