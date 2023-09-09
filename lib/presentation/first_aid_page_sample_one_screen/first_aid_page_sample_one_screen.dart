import 'package:flutter/material.dart';
import 'package:toutou_s_application1/core/app_export.dart';
import 'package:toutou_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:toutou_s_application1/widgets/custom_elevated_button.dart';

class FirstAidPageSampleOneScreen extends StatelessWidget {
  const FirstAidPageSampleOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                title: Container(
                    height: getVerticalSize(44),
                    width: getHorizontalSize(57.999996),
                    margin: getMargin(left: 53),
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgDesignsanstit130x73,
                          height: getVerticalSize(44),
                          width: getHorizontalSize(25),
                          alignment: Alignment.centerRight,
                          margin: getMargin(left: 20, right: 12)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 8, bottom: 6),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "1",
                                        style: CustomTextStyles
                                            .titleLargePrimaryContainer),
                                    TextSpan(
                                        text: "A  ",
                                        style: theme.textTheme.titleLarge),
                                    TextSpan(
                                        text: "D",
                                        style: CustomTextStyles
                                            .titleLargeOnErrorContainer_1)
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 1, right: 24, bottom: 1),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: getHorizontalSize(231),
                                margin: getMargin(top: 10),
                                child: Text("Anaphylaxis\n(Anaphylactic shock)",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.headlineSmall)),
                            Container(
                                height: getSize(35),
                                width: getSize(35),
                                margin: getMargin(left: 72, bottom: 43),
                                child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.img6769264601111,
                                          height: getSize(35),
                                          width: getSize(35),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(17)),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                              height: getSize(9),
                                              width: getSize(9),
                                              decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .primaryContainer,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              4)))))
                                    ]))
                          ]),
                      Container(
                          width: getHorizontalSize(297),
                          margin: getMargin(top: 13, right: 46),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Description:\n",
                                    style: CustomTextStyles
                                        .titleLargeOnErrorContainer),
                                TextSpan(
                                    text:
                                        "“Histamines, the substances released by the body during an allergic reaction, cause the blood vessels to expand, which in turn causes a dangerous drop in blood pressure. Fluid can leak into the lungs, causing swelling (pulmonary edema). Anaphylaxis can also cause heart rhythm disturbances.” - John Hopkins Medicine\n",
                                    style: CustomTextStyles
                                        .bodyLargeNunitoOnErrorContainer)
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("Signs and Symptoms:",
                              style: CustomTextStyles
                                  .titleLargeOnErrorContainerBold)),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage5,
                          height: getVerticalSize(271),
                          width: getHorizontalSize(300),
                          alignment: Alignment.center,
                          margin: getMargin(top: 18, bottom: 5))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 28),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomElevatedButton(
                      height: getVerticalSize(60),
                      width: getHorizontalSize(164),
                      text: "Call 911",
                      buttonStyle: CustomButtonStyles.fillRed,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeOnPrimaryContainer),
                  CustomElevatedButton(
                      height: getVerticalSize(60),
                      width: getHorizontalSize(170),
                      text: "Learn how to give first aid",
                      margin: getMargin(left: 19),
                      buttonStyle: CustomButtonStyles.fillRed,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnPrimaryContainer,
                      onTap: () {
                        onTapLearnhowto(context);
                      })
                ]))));
  }

  /// Navigates to the firstAidPageSampleScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the firstAidPageSampleScreen.
  onTapLearnhowto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.firstAidPageSampleScreen);
  }
}
