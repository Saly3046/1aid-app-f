import 'package:flutter/material.dart';
import 'package:first_aid_app/core/app_export.dart';
import 'package:first_aid_app/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "See All",
                        style: theme.textTheme.labelLarge,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration:
                                  AppDecoration.fillOnPrimaryContainer.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage2,
                                    height: getVerticalSize(95),
                                    width: getHorizontalSize(74),
                                    radius: BorderRadius.horizontal(
                                      left:
                                          Radius.circular(getHorizontalSize(8)),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 13,
                                      bottom: 5,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomRatingBar(
                                          initialRating: 2,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 11,
                                          ),
                                          child: Text(
                                            "Julia Mickelson",
                                            style: CustomTextStyles
                                                .labelMediumOnErrorContainer,
                                          ),
                                        ),
                                        SizedBox(
                                          height: getVerticalSize(24),
                                          width: getHorizontalSize(71),
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Text(
                                                  "Cardiologue",
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                  "0552634154",
                                                  style: theme
                                                      .textTheme.labelSmall,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgHealth24outline,
                                                height: getSize(12),
                                                width: getSize(12),
                                                alignment: Alignment.topLeft,
                                                margin: getMargin(
                                                  left: 1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 8,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCall24outline,
                                                  height: getSize(11),
                                                  width: getSize(11),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgBrightness,
                                                  height: getSize(10),
                                                  width: getSize(10),
                                                  margin: getMargin(
                                                    left: 6,
                                                    bottom: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getVerticalSize(95),
                              width: getHorizontalSize(170),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: getPadding(
                                        left: 8,
                                        top: 5,
                                        right: 8,
                                        bottom: 5,
                                      ),
                                      decoration: AppDecoration
                                          .fillOnPrimaryContainer
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomRatingBar(
                                            margin: getMargin(
                                              top: 8,
                                              right: 28,
                                            ),
                                            initialRating: 2,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 11,
                                              right: 11,
                                            ),
                                            child: Text(
                                              "Julia Mickelson",
                                              style: CustomTextStyles
                                                  .labelMediumOnErrorContainer,
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(24),
                                            width: getHorizontalSize(62),
                                            margin: getMargin(
                                              right: 19,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Text(
                                                    "generalist",
                                                    style: theme
                                                        .textTheme.labelMedium,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Text(
                                                    "0552634154",
                                                    style: theme
                                                        .textTheme.labelSmall,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLightbulb,
                                                  height: getSize(10),
                                                  width: getSize(10),
                                                  alignment: Alignment.topLeft,
                                                  margin: getMargin(
                                                    left: 1,
                                                    top: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 8,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCall24outline,
                                                  height: getSize(11),
                                                  width: getSize(11),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgBrightness,
                                                  height: getSize(10),
                                                  width: getSize(10),
                                                  margin: getMargin(
                                                    left: 6,
                                                    bottom: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgWomandoctorwe,
                                    height: getVerticalSize(95),
                                    width: getHorizontalSize(74),
                                    radius: BorderRadius.horizontal(
                                      left:
                                          Radius.circular(getHorizontalSize(8)),
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
