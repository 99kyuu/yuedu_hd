import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yuedu_hd/ui/home_page.dart';
import 'package:yuedu_hd/ui/style/ycolors.dart';

import 'ui/style/ycolors.dart';
import 'ui/style/ycolors.dart';
import 'ui/style/ycolors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([ 	 //强制横屏
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primaryColor: YColors.primary,
        primaryColorDark: YColors.primary_dark,
        primaryColorLight: YColors.primary_light,
        backgroundColor: YColors.background,
        cardColor: YColors.background_card,
        hintColor: YColors.text_hint,
        scaffoldBackgroundColor: YColors.background,
        canvasColor: YColors.background_input,
        accentColor: YColors.text_btn_color,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: HomePage(),
    );
  }
}