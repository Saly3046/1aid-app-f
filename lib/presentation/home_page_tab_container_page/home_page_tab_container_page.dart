import '../home_page_tab_container_page/widgets/slidertext_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toutou_s_application1/core/app_export.dart';
import 'package:toutou_s_application1/presentation/home_page/home_page.dart';
import 'package:toutou_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:toutou_s_application1/widgets/custom_text_form_field.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePageTabContainerPage extends StatefulWidget {
  const HomePageTabContainerPage({Key? key}) : super(key: key);

  @override
  HomePageTabContainerPageState createState() =>
      HomePageTabContainerPageState();
}

// ignore_for_file: must_be_immutable
class HomePageTabContainerPageState extends State<HomePageTabContainerPage>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  late TabController tabviewController;

  Future<void> requestLocationPermission() async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      // Permission granted, you can now access the location.
    } else if (status.isDenied) {
      // Permission denied.
    } else if (status.isPermanentlyDenied) {
      // Permission permanently denied, open app settings.
      openAppSettings();
    }
  }

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                title: Container(
                    height: getVerticalSize(44),
                    width: getHorizontalSize(57.999996),
                    margin: getMargin(left: 34),
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 31, top: 2, right: 37),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getVerticalSize(37),
                                    width: getHorizontalSize(165),
                                    margin: getMargin(top: 1),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                decoration: AppDecoration
                                                    .fillPrimaryContainer
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder18),
                                              )),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocation,
                                                        height:
                                                            getVerticalSize(20),
                                                        width:
                                                            getHorizontalSize(
                                                                16)),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 7),
                                                        child: Text("wait",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall))
                                                  ]))
                                        ])),
                                Container(
                                    height: getSize(35),
                                    width: getSize(35),
                                    margin: getMargin(bottom: 3),
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
                      CustomTextFormField(
                          controller: searchController,
                          margin: getMargin(left: 28, top: 18, right: 27),
                          hintText: "What do you need ?",
                          hintStyle: CustomTextStyles
                              .bodyLargeNunitoOnErrorContainer_1,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 18, top: 10, right: 16, bottom: 10),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(39)),
                          contentPadding:
                              getPadding(top: 5, right: 30, bottom: 5),
                          borderDecoration: TextFormFieldStyleHelper.fillTealF,
                          filled: true,
                          fillColor: appTheme.teal1007f),
                      Container(
                          height: getVerticalSize(157),
                          width: getHorizontalSize(338),
                          margin: getMargin(top: 15),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: getVerticalSize(157),
                                    width: getHorizontalSize(334),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CarouselSlider.builder(
                                              options: CarouselOptions(
                                                  height: getVerticalSize(157),
                                                  initialPage: 0,
                                                  autoPlay: true,
                                                  viewportFraction: 1.0,
                                                  enableInfiniteScroll: false,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  onPageChanged:
                                                      (index, reason) {
                                                    sliderIndex = index;
                                                  }),
                                              itemCount: 1,
                                              itemBuilder:
                                                  (context, index, realIndex) {
                                                return SlidertextItemWidget();
                                              }),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  height: getVerticalSize(8),
                                                  margin: getMargin(bottom: 15),
                                                  child: AnimatedSmoothIndicator(
                                                      activeIndex: sliderIndex,
                                                      count: 1,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      effect: ScrollingDotsEffect(
                                                          spacing: 4,
                                                          activeDotColor: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(0.8),
                                                          dotHeight:
                                                              getVerticalSize(
                                                                  8),
                                                          dotWidth:
                                                              getHorizontalSize(
                                                                  8)))))
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin: getMargin(top: 41),
                                    decoration: AppDecoration.outlineBlack,
                                    child: Text("Hi Daniel !",
                                        style: CustomTextStyles
                                            .titleMediumInterOnPrimaryContainer)))
                          ])),
                      Padding(
                          padding: getPadding(left: 31, top: 21, right: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("First Aid Emergencies",
                                        style: theme.textTheme.titleMedium)),
                                Padding(
                                    padding: getPadding(top: 6),
                                    child: Text("See All",
                                        style: theme.textTheme.labelLarge))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 31, top: 6),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    SizedBox(
                                        width: getHorizontalSize(251),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                  height: getVerticalSize(148),
                                                  width: getHorizontalSize(116),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        146),
                                                                width:
                                                                    getHorizontalSize(
                                                                        116),
                                                                decoration: BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .onErrorContainer
                                                                        .withOpacity(
                                                                            1),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(10))))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        148),
                                                                width:
                                                                    getHorizontalSize(
                                                                        116),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgImage1,
                                                                          height: getVerticalSize(
                                                                              148),
                                                                          width: getHorizontalSize(
                                                                              116),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              10)),
                                                                          alignment: Alignment
                                                                              .center,
                                                                          onTap:
                                                                              () {
                                                                            onTapImgImageoneone(context);
                                                                          }),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Container(
                                                                              padding: getPadding(left: 8, top: 4, right: 8, bottom: 4),
                                                                              decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                                                              child: Container(
                                                                                  width: getHorizontalSize(96),
                                                                                  margin: getMargin(top: 2),
                                                                                  child: RichText(
                                                                                      text: TextSpan(children: [
                                                                                        TextSpan(text: "Anaphylaxis\n", style: CustomTextStyles.labelLargeOnErrorContainer),
                                                                                        TextSpan(text: "(Anaphylactic shock)", style: CustomTextStyles.labelMediumOnErrorContainer_1)
                                                                                      ]),
                                                                                      textAlign: TextAlign.left))))
                                                                    ])))
                                                      ])),
                                              Container(
                                                  height: getVerticalSize(148),
                                                  width: getHorizontalSize(118),
                                                  margin: getMargin(left: 17),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        146),
                                                                width:
                                                                    getHorizontalSize(
                                                                        116),
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .blueGray100,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(7))))),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgProvidingfirst,
                                                            height:
                                                                getVerticalSize(
                                                                    146),
                                                            width:
                                                                getHorizontalSize(
                                                                    117),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        10)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        left: 9,
                                                                        top: 4,
                                                                        right:
                                                                            9,
                                                                        bottom:
                                                                            4),
                                                                decoration: AppDecoration
                                                                    .outlineBlack900
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle.roundedBorder8),
                                                                child: Container(
                                                                    width: getHorizontalSize(87),
                                                                    margin: getMargin(top: 2),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "Bleeding\n",
                                                                              style: CustomTextStyles.labelLargeOnErrorContainer),
                                                                          TextSpan(
                                                                              text: "(Cuts And Bruises)",
                                                                              style: CustomTextStyles.labelMediumOnErrorContainer_1)
                                                                        ]),
                                                                        textAlign: TextAlign.left))))
                                                      ]))
                                            ])),
                                    Container(
                                        height: getVerticalSize(148),
                                        width: getHorizontalSize(118),
                                        margin: getMargin(left: 17),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(146),
                                                      width: getHorizontalSize(
                                                          116),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .blueGray100,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      7))))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgHandspatients,
                                                  height: getVerticalSize(145),
                                                  width: getHorizontalSize(116),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(10)),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 28,
                                                          top: 5,
                                                          right: 28,
                                                          bottom: 5),
                                                      decoration: AppDecoration
                                                          .outlineBlack900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  59),
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "B",
                                                                        style: CustomTextStyles
                                                                            .labelLargeOnErrorContainer_1),
                                                                    TextSpan(
                                                                        text:
                                                                            "urns  and Scalds",
                                                                        style: CustomTextStyles
                                                                            .labelLargeOnErrorContainer_1)
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center))))
                                            ]))
                                  ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 23),
                              child: Text("Services",
                                  style: theme.textTheme.titleMedium))),
                      Container(
                          height: getVerticalSize(26),
                          width: getHorizontalSize(268),
                          margin: getMargin(left: 55, top: 6),
                          child: TabBar(
                              controller: tabviewController,
                              isScrollable: true,
                              labelColor: theme.colorScheme.onErrorContainer
                                  .withOpacity(1),
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700),
                              unselectedLabelColor: theme
                                  .colorScheme.onErrorContainer
                                  .withOpacity(1),
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700),
                              indicatorColor: theme.colorScheme.onErrorContainer
                                  .withOpacity(1),
                              tabs: [
                                Tab(child: Text("Doctors")),
                                Tab(child: Text("Ambulances")),
                                Tab(child: Text("Hospitals"))
                              ])),
                      SizedBox(
                          height: getVerticalSize(143),
                          child: TabBarView(
                              controller: tabviewController,
                              children: [HomePage(), HomePage(), HomePage()]))
                    ]))));
  }

  onTapImgImageoneone(BuildContext context) {
    // TODO: implement Actions
  }
}
