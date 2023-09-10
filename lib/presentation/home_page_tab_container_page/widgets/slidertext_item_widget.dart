import 'package:flutter/material.dart';
import 'package:first_aid_app/core/app_export.dart';

// ignore: must_be_immutable
class SlidertextItemWidget extends StatelessWidget {
  const SlidertextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Container(
          height: getVerticalSize(157),
          width: getHorizontalSize(334),
          padding: getPadding(
            top: 7,
            bottom: 7,
          ),
          decoration: AppDecoration.fillPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgHandhispanicm,
                height: getVerticalSize(137),
                width: getHorizontalSize(200),
                alignment: Alignment.topRight,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: getMargin(
                    left: 17,
                    bottom: 39,
                  ),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Quickly Assess Your Situation\n and Receive Tailored First Aid \nGuidance !",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallInter,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
