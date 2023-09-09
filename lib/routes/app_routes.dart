import 'package:flutter/material.dart';
import 'package:toutou_s_application1/presentation/splash_pageone_screen/splash_pageone_screen.dart';
import 'package:toutou_s_application1/presentation/logo_page_screen/logo_page_screen.dart';
import 'package:toutou_s_application1/presentation/spalsh_pagetwo_screen/spalsh_pagetwo_screen.dart';
import 'package:toutou_s_application1/presentation/spalsh_pagethree_screen/spalsh_pagethree_screen.dart';
import 'package:toutou_s_application1/presentation/login_page_screen/login_page_screen.dart';
import 'package:toutou_s_application1/presentation/signup_page_screen/signup_page_screen.dart';
import 'package:toutou_s_application1/presentation/first_aid_page_sample_one_screen/first_aid_page_sample_one_screen.dart';
import 'package:toutou_s_application1/presentation/first_aid_page_sample_screen/first_aid_page_sample_screen.dart';
import 'package:toutou_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:toutou_s_application1/presentation/home_page_container_screen/home_page_container_screen.dart';

class AppRoutes {
  static const String splashPageoneScreen = '/splash_pageone_screen';

  static const String logoPageScreen = '/logo_page_screen';

  static const String spalshPagetwoScreen = '/spalsh_pagetwo_screen';

  static const String spalshPagethreeScreen = '/spalsh_pagethree_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String signupPageScreen = '/signup_page_screen';

  static const String firstAidPageSampleOneScreen =
      '/first_aid_page_sample_one_screen';

  static const String firstAidPageSampleScreen =
      '/first_aid_page_sample_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static Map<String, WidgetBuilder> routes = {
    splashPageoneScreen: (context) => SplashPageoneScreen(),
    logoPageScreen: (context) => LogoPageScreen(),
    spalshPagetwoScreen: (context) => SpalshPagetwoScreen(),
    spalshPagethreeScreen: (context) => SpalshPagethreeScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    signupPageScreen: (context) => SignupPageScreen(),
    firstAidPageSampleOneScreen: (context) => FirstAidPageSampleOneScreen(),
    firstAidPageSampleScreen: (context) => FirstAidPageSampleScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    homePageContainerScreen: (context) => HomePageContainerScreen()
  };
}
