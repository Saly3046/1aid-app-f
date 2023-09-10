import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:first_aid_app/core/app_export.dart';
import 'package:first_aid_app/widgets/custom_elevated_button.dart';

class SplashPageoneScreen extends StatelessWidget {
  const SplashPageoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: SizedBox(
                width: double.maxFinite,
                child: SizedBox(
                    height: getVerticalSize(851),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              height: getVerticalSize(714),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCadreplatpilules,
                                        height: getVerticalSize(714),
                                        width: getHorizontalSize(393),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(0)),
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 17,
                                                top: 53,
                                                right: 59,
                                                bottom: 75),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector,
                                                      height: getSize(10),
                                                      width: getSize(10),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  5)),
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  Spacer(),
                                                  RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "Welcome to ",
                                                            style: theme
                                                                .textTheme
                                                                .headlineLarge),
                                                        TextSpan(
                                                            text: "1AID",
                                                            style: CustomTextStyles
                                                                .headlineLargeNunito)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          274),
                                                      margin: getMargin(
                                                          left: 41, top: 16),
                                                      child: Text(
                                                          "Welcome to LifeSaver Learn! \nYour go-to resource for learning essential first aid techniques and becoming a confident first responder.",
                                                          maxLines: 4,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .bodyMedium))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: getPadding(top: 190),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVector,
                                        height: getSize(10),
                                        width: getSize(10),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(5)),
                                        margin: getMargin(left: 22)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(10),
                                            margin: getMargin(top: 224),
                                            child: AnimatedSmoothIndicator(
                                                activeIndex: 0,
                                                count: 3,
                                                effect: ScrollingDotsEffect(
                                                    spacing: 14,
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                    strokeWidth: 1.5,
                                                    dotColor: Color.fromARGB(
                                                        255, 92, 151, 161),
                                                    activeDotColor: theme
                                                        .colorScheme
                                                        .onPrimaryContainer,
                                                    dotHeight:
                                                        getVerticalSize(10),
                                                    dotWidth: getHorizontalSize(
                                                        10))))),
                                    Spacer(),
                                    SizedBox(
                                        height: getVerticalSize(165),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCadreplatpilules165x393,
                                                  height: getVerticalSize(165),
                                                  width: getHorizontalSize(393),
                                                  alignment: Alignment.center),
                                              CustomElevatedButton(
                                                  width: getHorizontalSize(152),
                                                  text: "NEXT",
                                                  margin: getMargin(
                                                      top: 14, right: 110),
                                                  onTap: () {
                                                    onTapNext(context);
                                                  },
                                                  alignment: Alignment.topRight)
                                            ]))
                                  ])))
                    ])))));
  }

  /// Navigates to the spalshPagetwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the spalshPagetwoScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashPageoneScreen);
  }
}
