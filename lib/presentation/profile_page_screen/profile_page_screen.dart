import 'package:flutter/material.dart';

import 'package:first_aid_app/core/app_export.dart';

import 'package:first_aid_app/widgets/app_bar/appbar_image.dart';
import 'package:first_aid_app/widgets/app_bar/appbar_image_1.dart';
import 'package:first_aid_app/widgets/app_bar/custom_app_bar.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.teal100,
        appBar: CustomAppBar(
          height: 42.v,
          leadingWidth: 58.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgLeftarrow24,
            margin: EdgeInsets.only(left: 16.h),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgFile,
              margin: EdgeInsets.fromLTRB(21.h, 17.v, 21.h, 1.v),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 127.v,
                width: 131.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img6769264601112,
                      height: 123.adaptSize,
                      width: 123.adaptSize,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgFocus24outline,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.bottomRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img6769264601112,
                      height: 123.adaptSize,
                      width: 123.adaptSize,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgFocus24outline,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              SizedBox(
                height: 32.v,
                width: 250.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: AppDecoration.outlineBlueGray,
                        child: Text(
                          "lbl_mohammed_laarbi".tr,
                          style: CustomTextStyles.headlineSmallInterWhiteA700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: AppDecoration.outlineBlueGray,
                        child: Text(
                          "lbl_mohammed_laarbi".tr,
                          style: CustomTextStyles.headlineSmallInterWhiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21.v,
                width: 109.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_id_524687975".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_id_524687975".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 37.h,
                    top: 21.v,
                    right: 40.h,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 186.h,
                        child: Text(
                          "msg_man_25_y_o_phone".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Container(
                        width: 94.h,
                        margin: EdgeInsets.only(left: 23.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_blood_type_b_height2".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "lbl_kg_w".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: "lbl_eight".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "lbl".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: "lbl_180".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "lbl_cm".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 37.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 84.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 154.h,
                                    margin: EdgeInsets.only(bottom: 36.v),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "msg_illnesses_allergies2".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                          TextSpan(
                                            text: "\n\n".tr,
                                            style: CustomTextStyles
                                                .bodyMediumBluegray900,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    width: 87.h,
                                    margin: EdgeInsets.only(left: 11.h),
                                    child: Text(
                                      "msg_peanuts_rhume_strawberry".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900_1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 25.v,
                                right: 49.h,
                              ),
                              padding: EdgeInsets.only(left: 18.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 37.v),
                                    child: Text(
                                      "msg_vaccinations_administered".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Container(
                                    width: 87.h,
                                    margin: EdgeInsets.only(left: 14.h),
                                    child: Text(
                                      "msg_peanuts_rhume_strawberry".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900_1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 24.v,
                                right: 45.h,
                              ),
                              padding: EdgeInsets.only(left: 18.h),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 3.v),
                                    child: Text(
                                      "msg_medical_documents".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Container(
                                    width: 118.h,
                                    margin: EdgeInsets.only(
                                      left: 11.h,
                                      top: 3.v,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 9.h,
                                      vertical: 2.v,
                                    ),
                                    decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgLink,
                                          height: 13.adaptSize,
                                          width: 13.adaptSize,
                                          margin: EdgeInsets.only(bottom: 3.v),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 4.h,
                                            bottom: 1.v,
                                          ),
                                          child: Text(
                                            "lbl_blood_analysis".tr,
                                            style: CustomTextStyles
                                                .bodySmallBluegray900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgMedicalfile24,
                                    height: 22.adaptSize,
                                    width: 22.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 6.h,
                                      top: 2.v,
                                      bottom: 1.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 32.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.h,
                                vertical: 8.v,
                              ),
                              decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 26.v,
                                      bottom: 8.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgAddaccount24,
                                          height: 17.adaptSize,
                                          width: 17.adaptSize,
                                          alignment: Alignment.centerRight,
                                        ),
                                        SizedBox(height: 4.v),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgUsers24outline,
                                          height: 17.adaptSize,
                                          width: 17.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 5.h,
                                        right: 10.h,
                                        bottom: 1.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 73.h),
                                            child: Text(
                                              "msg_emergency_contact".tr,
                                              style: CustomTextStyles
                                                  .titleSmallRedA400,
                                            ),
                                          ),
                                          SizedBox(height: 9.v),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 148.h,
                                                child: Text(
                                                  "msg_full_name_maya".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCall24outlineRedA400,
                                                height: 17.adaptSize,
                                                width: 17.adaptSize,
                                                margin: EdgeInsets.only(
                                                  left: 11.h,
                                                  bottom: 24.v,
                                                ),
                                              ),
                                              Container(
                                                width: 101.h,
                                                margin: EdgeInsets.only(
                                                  left: 6.h,
                                                  bottom: 3.v,
                                                ),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            "lbl_contact_number"
                                                                .tr,
                                                        style: theme.textTheme
                                                            .bodyMedium,
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            "lbl_1234567890".tr,
                                                        style: CustomTextStyles
                                                            .bodyMedium13,
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ],
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: SizedBox(
                        height: 399.v,
                        child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          indent: 27.h,
                          endIndent: 299.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
