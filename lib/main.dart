//import 'package:first_aid_app/CutsAndScrape.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:first_aid_app/theme/theme_helper.dart';
import 'package:first_aid_app/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'first_aid_app',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.logoPageScreen,
      routes: AppRoutes.routes,
    );
  }
}
