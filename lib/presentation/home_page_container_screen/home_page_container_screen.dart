import 'package:flutter/material.dart';
import 'package:toutou_s_application1/core/app_export.dart';
import 'package:toutou_s_application1/presentation/home_page_tab_container_page/home_page_tab_container_page.dart';
import 'package:toutou_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomePageContainerScreen extends StatelessWidget {
  HomePageContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePageContainerScreen,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageContainerScreen;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Car:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePageContainerScreen:
        return HomePageTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
