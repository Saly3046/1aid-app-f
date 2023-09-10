import 'package:flutter/material.dart';
import 'package:first_aid_app/core/app_export.dart';
import 'package:first_aid_app/widgets/app_bar/appbar_image.dart';
import 'package:first_aid_app/widgets/app_bar/custom_app_bar.dart';

class FirstAidPageSampleScreen extends StatelessWidget {
  const FirstAidPageSampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(43),
                leading: AppbarImage(
                    imagePath: ImageConstant.imgImage533x30,
                    margin: getMargin(left: 13, top: 13, bottom: 10),
                    onTap: () {
                      onTapImagefiveone(context);
                    }),
                title: Container(
                    height: getVerticalSize(44),
                    width: getHorizontalSize(57.999996),
                    margin: getMargin(left: 10),
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
                padding: getPadding(left: 22, top: 1, right: 22, bottom: 1),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 2, right: 7),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(231),
                                    margin: getMargin(top: 10),
                                    child: Text(
                                        "Anaphylaxis\n(Anaphylactic shock)",
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
                                              imagePath: ImageConstant
                                                  .img6769264601111,
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
                              ])),
                      Padding(
                          padding: getPadding(left: 2, top: 16),
                          child: Text("Tools required:",
                              style: CustomTextStyles
                                  .titleLargeOnErrorContainerBold)),
                      Container(
                          height: getVerticalSize(354),
                          width: getHorizontalSize(304),
                          margin: getMargin(left: 2, top: 4),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(top: 41),
                                    child: Text("Things you could do:",
                                        style: CustomTextStyles
                                            .titleLargeOnErrorContainerBold))),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: getHorizontalSize(294),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  "Epinephrine injector\n\n\n P",
                                              style: CustomTextStyles
                                                  .bodyLargeNunitoBlack900),
                                          TextSpan(
                                              text:
                                                  "ress the injector against the person's thigh.\nHave the person lie face up and be still.\nLoosen tight clothing and cover the person with a blanket. Don't give the person anything to drink.\nIf there's vomiting or bleeding from the mouth, turn the person to the side to prevent choking.\nIf there are no signs of breathing, coughing or movement, begin CPR. Do uninterrupted chest presses — about 100 every minute — until paramedics arrive.\nGet emergency treatment even if symptoms start to improve.",
                                              style: CustomTextStyles
                                                  .bodyMediumNunitoBlack900)
                                        ]),
                                        textAlign: TextAlign.left)))
                          ])),
                      Container(
                          height: getVerticalSize(237),
                          width: getHorizontalSize(348),
                          margin: getMargin(left: 1, top: 11, bottom: 5),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(bottom: 6),
                                    child: Text("Call 911",
                                        style: CustomTextStyles
                                            .titleLargeOnPrimaryContainer))),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage6,
                                height: getVerticalSize(237),
                                width: getHorizontalSize(348),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.center)
                          ]))
                    ]))));
  }

  /// Navigates to the firstAidPageSampleOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the firstAidPageSampleOneScreen.
  onTapImagefiveone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.firstAidPageSampleOneScreen);
  }
}
