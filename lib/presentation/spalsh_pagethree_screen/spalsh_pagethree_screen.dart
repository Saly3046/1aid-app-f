import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toutou_s_application1/core/app_export.dart';
import 'package:toutou_s_application1/widgets/custom_elevated_button.dart';

class SpalshPagethreeScreen extends StatelessWidget {
  const SpalshPagethreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.onPrimary,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSpalshpagethree),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 7, top: 60, right: 7, bottom: 60),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: getVerticalSize(313),
                              width: getHorizontalSize(379),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgVectorOnprimarycontainer,
                                    height: getSize(10),
                                    width: getSize(10),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(5)),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 15, top: 130)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgTimehealingco,
                                    height: getVerticalSize(313),
                                    width: getHorizontalSize(379),
                                    alignment: Alignment.center)
                              ])),
                          Container(
                              height: getVerticalSize(10),
                              margin: getMargin(top: 52),
                              child: AnimatedSmoothIndicator(
                                  activeIndex: 2,
                                  count: 3,
                                  effect: ScrollingDotsEffect(
                                    spacing: 14,
                                    paintStyle: PaintingStyle.fill,
                                    strokeWidth: 1.5,
                                    dotColor: Color.fromARGB(255, 92, 151, 161),
                                    activeDotColor:
                                        theme.colorScheme.onPrimaryContainer,
                                    dotHeight: getVerticalSize(10),
                                    dotWidth: getHorizontalSize(10),
                                  ))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: getHorizontalSize(221),
                                  margin: getMargin(left: 68, top: 52),
                                  child: Text(
                                      "Save a life and be prepared anyway",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.headlineMedium))),
                          Container(
                              width: getHorizontalSize(239),
                              margin: getMargin(top: 11),
                              child: Text(
                                  "Elevate Your Preparedness: Register and Embark on Your Life-Saving Journey with 1Aid",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium)),
                          CustomElevatedButton(
                              width: getHorizontalSize(152),
                              text: "Get Started",
                              margin: getMargin(top: 78, bottom: 5),
                              buttonStyle:
                                  CustomButtonStyles.fillOnPrimaryContainer,
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallInterTeal10001,
                              onTap: () {
                                onTapGetstarted(context);
                              },
                              alignment: Alignment.center)
                        ])))));
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginPageScreen.
  onTapGetstarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
