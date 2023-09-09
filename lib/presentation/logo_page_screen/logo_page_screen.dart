import 'package:flutter/material.dart';
import 'package:toutou_s_application1/core/app_export.dart';

class LogoPageScreen extends StatelessWidget {
  const LogoPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: SizedBox(
                width: double.maxFinite,
                child: CustomImageView(
                    imagePath: ImageConstant.imgDesignsanstit,
                    height: getVerticalSize(448),
                    width: getHorizontalSize(393),
                    alignment: Alignment.center,
                    onTap: () {
                      onTapImgDesignsanstit(context);
                    }))));
  }

  /// Navigates to the splashPageoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the splashPageoneScreen.
  onTapImgDesignsanstit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashPageoneScreen);
  }
}
