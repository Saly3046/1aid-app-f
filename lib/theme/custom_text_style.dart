import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeNunitoBlack900 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNunitoBlack900Light =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNunitoOnErrorContainer =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNunitoOnErrorContainer_1 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.5),
      );
  static get bodyMediumNunitoBlack900 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumOnErrorContainer15 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
      );
  // Display text style
  static get displayLargeInterBlack900 =>
      theme.textTheme.displayLarge!.inter.copyWith(
        color: appTheme.black900,
      );
  static get displayLargeOnErrorContainer =>
      theme.textTheme.displayLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get displayLargePrimary => theme.textTheme.displayLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline style
  static get headlineLargeNunito => theme.textTheme.headlineLarge!.nunito;
  static get headlineSmallInterWhiteA700 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 25.fSize,
      );

  // Label text style
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: getFontSize(
          13,
        ),
      );
  static get labelLargeOnErrorContainer13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: getFontSize(
          13,
        ),
      );
  static get labelLargeOnErrorContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get labelLargeOnErrorContainer_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get labelMediumOnErrorContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get labelMediumOnErrorContainer_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  // Title text style
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeInterOnErrorContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: getFontSize(
          20,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: getFontSize(
          20,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnErrorContainerBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: getFontSize(
          20,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnErrorContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w800,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumInterOnPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          19,
        ),
      );
  static get titleMediumInterOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          17,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterTeal100 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.teal100,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterTeal10001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.teal10001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterTeal10002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.teal10002,
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w800,
      );
  static get titleSmallRedA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA400,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );

  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumBluegray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.5),
        fontSize: 11.fSize,
      );
}

extension on TextStyle {
  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
