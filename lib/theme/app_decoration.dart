import 'package:flutter/material.dart';
import 'package:first_aid_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOnSecondary => BoxDecoration(
        color: theme.colorScheme.onSecondary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );

  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal100,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.8),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration();

  // Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.15),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder5 => BorderRadius.circular(
        getHorizontalSize(5),
      );

  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        getHorizontalSize(11),
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        getHorizontalSize(17),
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        getHorizontalSize(20),
      );
  static BorderRadius get roundedBorder26 => BorderRadius.circular(
        getHorizontalSize(26),
      );

  // Custom borders
  static BorderRadius get customBorderTL8 => BorderRadius.horizontal(
        left: Radius.circular(getHorizontalSize(8)),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        getHorizontalSize(18),
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        getHorizontalSize(8),
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
