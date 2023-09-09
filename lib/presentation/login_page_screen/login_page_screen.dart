import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter/material.dart';
import 'package:toutou_s_application1/core/app_export.dart';
import 'package:toutou_s_application1/services/firebase_services.dart';
import 'package:toutou_s_application1/widgets/custom_elevated_button.dart';
import 'package:toutou_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

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
                    padding: getPadding(left: 33, right: 33),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getVerticalSize(130),
                                  width: getHorizontalSize(152),
                                  margin: getMargin(top: 8),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgDesignsanstit130x73,
                                            height: getVerticalSize(130),
                                            width: getHorizontalSize(73),
                                            alignment: Alignment.centerRight,
                                            margin: getMargin(right: 27)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(top: 23),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "1",
                                                          style: theme.textTheme
                                                              .displayLarge),
                                                      TextSpan(
                                                          text: "A  ",
                                                          style: CustomTextStyles
                                                              .displayLargePrimary),
                                                      TextSpan(
                                                          text: "D",
                                                          style: CustomTextStyles
                                                              .displayLargeOnErrorContainer)
                                                    ]),
                                                    textAlign: TextAlign.left)))
                                      ]))),
                          Padding(
                              padding: getPadding(left: 11, top: 38),
                              child: Text("Login to your Account",
                                  style: CustomTextStyles
                                      .titleLargeInterOnErrorContainer)),
                          CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(left: 6, top: 27, right: 6),
                              hintText: "Email",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputType: TextInputType.emailAddress),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(left: 6, top: 21, right: 6),
                              hintText: "Password",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true),
                          CustomElevatedButton(
                              height: getVerticalSize(55),
                              text: "Sign in",
                              margin: getMargin(left: 6, top: 36, right: 4),
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumInterOnPrimaryContainerSemiBold,
                              onTap: () {
                                onTapSignin(context);
                              }),
                          Padding(
                              padding: getPadding(left: 86, top: 68),
                              child: Text("-  Or sign in with  -",
                                  style: theme.textTheme.bodyLarge)),
                          Padding(
                              padding: getPadding(left: 3, top: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(94),
                                        padding: getPadding(
                                            left: 35,
                                            top: 15,
                                            right: 35,
                                            bottom: 15),
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
                                            alignment: Alignment.topLeft,
                                            onTap: () async {
                                              await FirebaseServices()
                                                  .signInWithGoogle();
                                              Navigator.pushNamed(
                                                  context,
                                                  AppRoutes
                                                      .appNavigationScreen);
                                            })),
                                    Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(94),
                                        padding: getPadding(
                                            left: 34,
                                            top: 13,
                                            right: 34,
                                            bottom: 13),
                                        decoration: AppDecoration.outlinePrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder5),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSocialiconfacebook,
                                            height: getSize(25),
                                            width: getSize(25),
                                            alignment: Alignment.topLeft,
                                            onTap: () async {
                                              await signInWithFacebook();
                                              Navigator.pushNamed(
                                                  context,
                                                  AppRoutes
                                                      .homePageContainerScreen);
                                            })),
                                    Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(94),
                                        padding: getPadding(
                                            left: 34,
                                            top: 13,
                                            right: 34,
                                            bottom: 13),
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
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 70),
                                  child: GestureDetector(
                                      onTap: () {
                                        // Navigate to the SignUp page
                                        Navigator.pushNamed(
                                            context,
                                            AppRoutes
                                                .signupPageScreen); // Replace with your SignUp page
                                      },
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Don’t have an account? ",
                                              style: CustomTextStyles
                                                  .bodyMediumOnErrorContainer,
                                            ),
                                            TextSpan(
                                              text: "Sign up",
                                              style: CustomTextStyles
                                                  .titleSmallInterTeal10002
                                                  .copyWith(
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            )
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      )))),
                        ])))));
  }

  onTapSignin(BuildContext context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) {
      Navigator.pushNamed(context, AppRoutes.homePageContainerScreen);
    }).onError((error, stackTrace) {
      print("Error ${error.toString()}");
    });
  }
}
