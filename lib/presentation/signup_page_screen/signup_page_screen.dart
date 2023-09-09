import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:toutou_s_application1/core/app_export.dart';
import 'package:toutou_s_application1/widgets/custom_checkbox_button.dart';
import 'package:toutou_s_application1/widgets/custom_elevated_button.dart';
import 'package:toutou_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupPageScreen extends StatelessWidget {
  SignupPageScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool iaccepttheterms = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 23, right: 23),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 99, top: 14),
                                  child: Text("Sign Up",
                                      style: theme.textTheme.displaySmall))),
                          CustomTextFormField(
                              controller: userNameController,
                              margin: getMargin(left: 11, top: 58, right: 21),
                              hintText: "Username",
                              hintStyle: theme.textTheme.bodyLarge!),
                          CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(left: 11, top: 21, right: 21),
                              hintText: "Email",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputType: TextInputType.emailAddress),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(left: 11, top: 21, right: 19),
                              hintText: "Password",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true),
                          CustomTextFormField(
                              controller: confirmpasswordController,
                              margin: getMargin(left: 16, top: 24, right: 16),
                              hintText: "Confirm password",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CustomCheckboxButton(
                                  alignment: Alignment.centerLeft,
                                  text: "I accept the terms and privacy policy",
                                  value: iaccepttheterms,
                                  margin: getMargin(left: 25, top: 25),
                                  onChange: (value) {
                                    iaccepttheterms = value;
                                  })),
                          CustomElevatedButton(
                              height: getVerticalSize(55),
                              text: "Sign up",
                              margin: getMargin(left: 16, top: 32, right: 16),
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumInterOnPrimaryContainerSemiBold,
                              onTap: () {
                                onTapSignup(context);
                              }),
                          Padding(
                              padding: getPadding(top: 71),
                              child: Text("-  Or sign up with  -",
                                  style: theme.textTheme.bodyLarge)),
                          Padding(
                              padding: getPadding(left: 11, top: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(94),
                                        padding: getPadding(
                                            left: 34,
                                            top: 14,
                                            right: 34,
                                            bottom: 14),
                                        decoration: AppDecoration.outlinePrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder5),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgGoogle,
                                            height: getVerticalSize(23),
                                            width: getHorizontalSize(22),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(11)),
                                            alignment: Alignment.topRight)),
                                    Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(94),
                                        padding: getPadding(
                                            left: 33,
                                            top: 15,
                                            right: 33,
                                            bottom: 15),
                                        decoration: AppDecoration.outlinePrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder5),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSocialiconfacebook,
                                            height: getSize(25),
                                            width: getSize(25),
                                            alignment: Alignment.topRight)),
                                    Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(94),
                                        padding: getPadding(
                                            left: 34,
                                            top: 15,
                                            right: 34,
                                            bottom: 15),
                                        decoration: AppDecoration.outlinePrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder5),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSocialiconapple,
                                            height: getSize(25),
                                            width: getSize(25),
                                            alignment: Alignment.topLeft))
                                  ]))
                        ])))));
  }

  onTapSignup(BuildContext context) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) {
      print("Created New Account");
      Navigator.pushNamed(context, AppRoutes.appNavigationScreen);
    }).onError((error, stackTrace) {
      print("Error ${error.toString()}");
    });
  }
}
