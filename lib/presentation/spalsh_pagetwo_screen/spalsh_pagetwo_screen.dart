import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:first_aid_app/core/app_export.dart';
import 'package:first_aid_app/widgets/custom_elevated_button.dart';

class SpalshPagetwoScreen extends StatelessWidget {
  const SpalshPagetwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    image: DecorationImage(
                        image: AssetImage(
                            ImageConstant.imgCadreplatpilules165x393),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 2, top: 41, right: 2, bottom: 41),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: getVerticalSize(319),
                              width: getHorizontalSize(387),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector,
                                    height: getSize(10),
                                    width: getSize(10),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(5)),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 19, top: 149)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArtificialresp,
                                    height: getVerticalSize(319),
                                    width: getHorizontalSize(387),
                                    alignment: Alignment.center)
                              ])),
                          Container(
                              height: getVerticalSize(10),
                              margin: getMargin(top: 64),
                              child: AnimatedSmoothIndicator(
                                  activeIndex: 1,
                                  count: 3,
                                  effect: ScrollingDotsEffect(
                                      spacing: 14,
                                      paintStyle: PaintingStyle.fill,
                                      strokeWidth: 1.5,
                                      dotColor:
                                          Color.fromARGB(255, 92, 151, 161),
                                      activeDotColor:
                                          theme.colorScheme.onPrimaryContainer,
                                      dotHeight: getVerticalSize(10),
                                      dotWidth: getHorizontalSize(10)))),
                          Container(
                              width: getHorizontalSize(306),
                              margin: getMargin(left: 41, top: 52, right: 39),
                              child: Text(
                                  "Discover the Benefits of LifeSaver Learn",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineMedium)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  width: getHorizontalSize(273),
                                  margin:
                                      getMargin(left: 66, top: 16, right: 47),
                                  child: Text(
                                      "Learn life-saving techniques from the comfort of your home.\nGain the skills and confidence to respond effectively during emergencies.",
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.bodyMedium))),
                          CustomElevatedButton(
                              width: getHorizontalSize(152),
                              text: "NEXT",
                              margin: getMargin(top: 61, bottom: 5),
                              onTap: () {
                                onTapNext(context);
                              },
                              alignment: Alignment.center)
                        ])))));
  }

  /// Navigates to the spalshPagethreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the spalshPagethreeScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spalshPagethreeScreen);
  }
}
